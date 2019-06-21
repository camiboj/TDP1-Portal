///
// Created by ndv on 5/5/19.
//
#include "../common/Window.h"
#include "../common/Sprite.h"
#include "views/StageView.h"
#include <SDL.h>
#include <SDL_image.h>
#include <string>
#include <iostream>
#include "../common/SDLSession.h"
#include <yaml-cpp/yaml.h>
#include "../common/constants.h"
#include "views/Camera.h"
#include "audio/AudioSystem.h"
#include "../json/json.hpp"
#include "views/ViewManager.h"
#include "../common/UserEvent.h"
#include "../common/UserEventQueue.h"
#include "communication-support/UserEventHandler.h"
#include "../common/Socket.h"
#include "communication-support/EventSender.h"
#include "../common/StageStatusQueue.h"
#include "communication-support/StageStatusReceiver.h"

// It's recommended to use multiples of the MTP_FACTOR to get a smooth
// experience.
#define SCREEN_WIDTH 1050
#define SCREEN_HEIGHT 700
#define MTP_FACTOR 70
#define TEXTURE_CONFIG_FILE "config/textures.yaml"

void playGame() {
    YAML::Node textures = YAML::LoadFile(TEXTURE_CONFIG_FILE);

    std::string idChell;

    std::string host = "localhost";
    std::string service = "8000";

    Socket clientSocket;
    clientSocket.connectToHost(host, service);

    bool login = true;

    while (login) {
        // We'll first receive a list of games availables.
        int gamesAvailableSize;
        clientSocket.receiveMessage(&gamesAvailableSize, REQUEST_LEN_SIZE);
        std::string gaString(gamesAvailableSize, '\0');
        clientSocket.receiveMessage(&gaString[0], gamesAvailableSize);
        nlohmann::json gamesJson = nlohmann::json::parse(gaString);
        std::vector<std::string> gamesAvailable = gamesJson["games"].get<std::vector<std::string>>();
        if (gamesAvailable.size() == 0) {
            std::cout << "No games available at the moment, create one!\n";
        } else {
            std::cout << "List of games available: \n";
            for (auto it = gamesAvailable.begin(); it != gamesAvailable.end(); ++it) {
                std::cout << *it << std::endl;
            }
        }
        // TODO: Gotta validate the user input.
        std::cout << "Do you want to [create] or [join] a game? Type [quit] to leave.\n";
        std::string action;
        std::getline(std::cin, action);
        if (action == "quit") {
            clientSocket.shutdownAndClose();
            return;
        }
        std::cout << "Enter game name: \n";
        std::string gameName;
        std::getline(std::cin, gameName);
        std::cout << "Enter your ID: \n";
        std::string playerId;
        std::getline(std::cin, playerId);
        // Gotta check that no field is null, etc.
        nlohmann::json actionJson;
        int actionCode;
        if (action.compare("create") == 0) actionCode = CREATE_GAME_CODE;
        else if (action.compare("join") == 0) actionCode = JOIN_GAME_CODE;
        actionJson["action"] = actionCode;
        actionJson["gameName"] = gameName;
        actionJson["id"] = playerId;
        std::string actionJsonString = actionJson.dump();
        std::cout << "Json accion: " << actionJsonString << std::endl;
        int actionJsonSize = actionJsonString.size();
        clientSocket.sendMessage(&actionJsonSize, REQUEST_LEN_SIZE);
        clientSocket.sendMessage(&actionJsonString[0], actionJsonSize);
        std::cout << "Waiting response from server...\n";
        int serverResponseSize;
        clientSocket.receiveMessage(&serverResponseSize, REQUEST_LEN_SIZE);
        std::string serverResponse(serverResponseSize, '\0');
        clientSocket.receiveMessage(&serverResponse[0], serverResponseSize);
        nlohmann::json serverResponseJson = nlohmann::json::parse(serverResponse);
        int responseCode = serverResponseJson["result"].get<int>();
        std::cout << serverResponseJson["desc"].get<std::string>() << std::endl;
        if (responseCode == SUCCESS_CODE) {
            idChell = serverResponseJson["idChell"].get<std::string>();
            std::cout << "Id chell asignada: " << idChell << std::endl;
            login = false;
        }

    }

    SoundCodeQueue soundQueue;
    AudioSystem audioSystem(soundQueue);
    std::string title = "Portal";

    Window newWindow(title, SCREEN_WIDTH, SCREEN_HEIGHT, SDL_WINDOW_SHOWN);
    // Cool space background.
    std::string bgPath = "resources/Backgrounds/NebulaRed.png";
    Sprite background(bgPath, newWindow);
    std::string metalBlock = "MetalBlock";

    //Here we'll receive the metadata
    int jsonMetadataSize;
    clientSocket.receiveMessage(&jsonMetadataSize, REQUEST_LEN_SIZE);
    std::string jsonMetadata(jsonMetadataSize, '\0');
    clientSocket.receiveMessage(&jsonMetadata[0], jsonMetadataSize);

    nlohmann::json metadata = nlohmann::json::parse(jsonMetadata);

    int stageWidth = metadata["stage"]["width"].get<int>();
    int stageHeight = metadata["stage"]["height"].get<int>();
    
    int levelWidth = stageWidth * MTP_FACTOR;
    int levelHeight = stageHeight * MTP_FACTOR;

    Camera camera(SCREEN_WIDTH, SCREEN_HEIGHT, levelWidth, levelHeight);

    UserEventQueue userEventQueue;
    UserEventHandler userEventHandler(camera, userEventQueue,
                                      idChell, levelHeight,
                                      soundQueue);
    StageStatusQueue stageStatusQueue;

    EventSender eventSender(clientSocket, userEventQueue);
    StageStatusReceiver stageStatusReceiver(clientSocket, stageStatusQueue);

    // Here we'll receive two jsons with the data of the map to be played.
    // First one is for static objects without state.
    int jsonSOsize;
    clientSocket.receiveMessage(&jsonSOsize, REQUEST_LEN_SIZE);
    std::string jsonStaticObjects(jsonSOsize, '\0');
    clientSocket.receiveMessage(&jsonStaticObjects[0], jsonSOsize);
    // Second one is for objects with state.
    int jsonDOsize;
    clientSocket.receiveMessage(&jsonDOsize, REQUEST_LEN_SIZE);
    std::string jsonDynamicObjects(jsonDOsize, '\0');
    clientSocket.receiveMessage(&jsonDynamicObjects[0], jsonDOsize);
    //
    nlohmann::json staticObjects = nlohmann::json::parse(jsonStaticObjects);
    nlohmann::json dynamicObjects = nlohmann::json::parse(jsonDynamicObjects);

    StageView stageView(newWindow, textures, MTP_FACTOR, staticObjects, stageHeight);
    ViewManager viewManager(newWindow, levelHeight,
                            MTP_FACTOR, idChell, dynamicObjects, soundQueue);
    audioSystem.playMusic(BG_SONG_GAME);
    userEventHandler.start();
    eventSender.start();
    stageStatusReceiver.start();
    
    nlohmann::json stageUpdateRequest = "{}"_json;
    const SDL_Rect& cameraRect = camera.getCameraRectangle();
    bool quit = false;
    while (!quit) {
        // This isn't optimal but it'll do for now.
        if (!stageStatusQueue.empty()) {
            std::string stageStatusString = stageStatusQueue.pop();
            stageUpdateRequest = nlohmann::json::parse(stageStatusString);
        }
        if (userEventHandler.isDead() || stageStatusReceiver.isDead()
            || eventSender.isDead()) {
            quit = true;
        }
        // Time to draw!
        newWindow.clear();
        SDL_Rect* bgRect = nullptr;
        background.draw(bgRect);
        stageView.draw(cameraRect);
        viewManager.showAndUpdateViews(stageUpdateRequest, camera);
        newWindow.render();
        audioSystem.playSoundEffects();

    }
    UserEvent eventSenderSuicidePill = UserEvent(idChell, USER_QUIT_CODE, 0, 0);
    userEventQueue.push(eventSenderSuicidePill);

    clientSocket.shutdownAndClose();
    userEventHandler.stop();
    userEventHandler.join();
    eventSender.stop();
    eventSender.join();
    stageStatusReceiver.stop();
    stageStatusReceiver.join();
    std::cout << "Game finished, thanks for playing!\n";
}

int main(int argc, char* argv[]){
    SDLSession sdlSession(SDL_INIT_VIDEO | SDL_INIT_AUDIO);
    try {
        playGame();
    } catch (const std::exception& e) {
        std::cout << e.what() << std::endl;
    }
}
