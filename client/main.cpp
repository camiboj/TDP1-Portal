///
// Created by ndv on 5/5/19.
//
#include "../common/Window.h"
#include "../common/Sprite.h"
#include "StageView.h"
#include <SDL.h>
#include <SDL_image.h>
#include <string>
#include <iostream>
#include "../common/SDLSession.h"
#include <yaml-cpp/yaml.h>
#include <Stage.h>
#include <StageManager.h>
#include "../common/constants.h"
#include "Camera.h"
#include "AudioSystem.h"
#include "../json/json.hpp"
#include "ViewManager.h"
#include "../common/UserEvent.h"
#include "../common/UserEventQueue.h"
#include "UserEventHandler.h"

#define SCREEN_WIDTH 1000
#define SCREEN_HEIGHT 600
#define MTP_FACTOR 100
#define TEXTURE_CONFIG_FILE "config/textures.yaml"

void playGame() {
    YAML::Node textures = YAML::LoadFile(TEXTURE_CONFIG_FILE);
    float xPosChell = 4;
    float yPosChell = 1;
    std::string idChell = "Chell1";
    float xPosRock = 8;
    float yPosRock = 1;
    std::string idRock = "Rock1";
    //float xPosCake = 2;
    float xPosCake = xPosRock;
    float yPosCake = yPosChell + 0.5;

    float xPosAcid = 12;
    float yPosAcid = 1;

    float xPosButton1 = 17;
    float yPosButton1= 1;

    float xPosButton2 = 5;
    float yPosButton2 = 1;

    float xPosButton3 = 3;
    float yPosButton3 = 1;

    float xPosGate = 13;
    float yPosGate = 2;

    std::string idAcid = "Acid1";

    nlohmann::json objectsData = {
            {
                    "Chell1",
                    {
                            {"type", CHELL_VIEW_CODE},
                            {"state", 0},
                            {"x", xPosChell} ,
                            {"y", yPosChell}
                    }

            },
            {
                    "Cake",
                    {
                            {"type", CAKE_VIEW_CODE},
                            {"state", 0},
                            {"x", xPosCake},
                            {"y", yPosCake}
                    }
            },{
                    "BlueShot1",
                    {
                            {"type", BULLET_VIEW_CODE},
                            {"state", 0},
                            {"x", xPosChell} ,
                            {"y", yPosChell}
                    }
            },{
                    "OrangeShot1",
                    {
                            {"type", BULLET_VIEW_CODE},
                            {"state", 0},
                            {"x", xPosChell} ,
                            {"y", yPosChell}
                    }
            },{
                    "BluePortal1",
                    {
                            {"type", BLUE_PORTAL_VIEW_CODE},
                            {"state", 0},
                            {"x", xPosChell} ,
                            {"y", yPosChell}
                    }
            },{
                    "OrangePortal1",
                    {
                            {"type", ORANGE_PORTAL_VIEW_CODE},
                            {"state", 0},
                            {"x", xPosChell} ,
                            {"y", yPosChell}
                    }
            },{
                    "Rock1",
                    {
                            {"type", ROCK_VIEW_CODE},
                            {"state", 0},
                            {"x", xPosRock},
                            {"y", yPosRock}
                    }
            }, {
                    "Rock2",
                    {
                            {"type", ROCK_VIEW_CODE},
                            {"state", 0},
                            {"x", xPosRock + 2},
                            {"y", yPosRock}
                    }
            },{
                "Acid1",
                    {
                            {"type", ACID_VIEW_CODE},
                            {"state", 0},
                            {"x", xPosAcid},
                            {"y", yPosAcid}
                    }
            },{
                "EnergyBall1",
                    {
                            {"type", ENERGY_BALL__VIEW_CODE},
                            {"state", 0},
                            {"x", xPosChell},
                            {"y", yPosChell}
                    }
            },{
                "Button1",
                    {
                            {"type", BUTTON_VIEW_CODE},
                            {"state", OFF},
                            {"x", xPosButton1},
                            {"y", yPosButton1}
                    }
            }, {
                    "Button2",
                    {
                            {"type", BUTTON_VIEW_CODE},
                            {"state", OFF},
                            {"x", xPosButton2},
                            {"y", yPosButton2}
                    }
            },{
                "Gate1",
                    {
                            {"type", GATE_VIEW_CODE},
                            {"state", CLOSED},
                            {"x", xPosGate},
                            {"y", yPosGate}
                    }
            },{
                "Button3",
                    {
                            {"type", BUTTON_VIEW_CODE},
                            {"state", OFF},
                            {"x", xPosButton3},
                            {"y", yPosButton3}
                    }
            },{
                "Rock3",
                    {
                            {"type", ROCK_VIEW_CODE},
                            {"state", OFF},
                            {"x", xPosRock + 15},
                            {"y", yPosRock}
                    }
            },
    };
    nlohmann::json stageUpdateRequest;

    SoundCodeQueue soundQueue;
    AudioSystem audioSystem(soundQueue);
    std::string title = "Portal";
    std::string playerID = "Chell1";
    Window newWindow(title, SCREEN_WIDTH, SCREEN_HEIGHT, SDL_WINDOW_SHOWN);
    // Cool space background.
    std::string bgPath = "resources/Backgrounds/NebulaRed.png";
    Sprite background(bgPath, newWindow);
    std::string metalBlock = "MetalBlock";
    int stageWidth = 40;
    int stageHeight = 20;
    int levelWidth = stageWidth * MTP_FACTOR;
    int levelHeight = stageHeight * MTP_FACTOR;

    StageView stageView(newWindow, textures, MTP_FACTOR);
    Stage stage(stageWidth, stageHeight);
    stage.addChell(idChell, CHELL_HEIGHT, CHELL_WIDTH,
                   xPosChell, yPosChell);

    std::string id_gate = "Gate1";
    std::string id_button_1 = "Button1";
    std::string id_button_2 = "Button2";
    std::string id_button_3 = "Button3";
    stage.addElement(BUTTON_NAME, id_button_1, BUTTON_HEIGHT, BUTTON_WIDTH, xPosButton1, yPosButton1);
    stage.addElement(BUTTON_NAME, id_button_2, BUTTON_HEIGHT, BUTTON_WIDTH, xPosButton2, yPosButton2);
    stage.addElement(BUTTON_NAME, id_button_3, BUTTON_HEIGHT, BUTTON_WIDTH, xPosButton3, yPosButton3);
    Button* button1 = stage.getButton(id_button_1);
    Button* button2 = stage.getButton(id_button_2);
    Button* button3 = stage.getButton(id_button_3);

    std::unordered_map<std::string, Button*> buttons;
    buttons.insert({id_button_1, button1});
    buttons.insert({id_button_2, button2});
    buttons.insert({id_button_3, button3});

    std::string logic = "Button1 & Button2 & !Button3";
    stage.addGate(id_gate, GATE_HEIGHT, GATE_WIDTH, xPosGate,
            yPosGate, buttons, logic);


   //stage.addCake(1, xPosCake, yPosCake);
   stage.addRock(idRock, ROCK_HEIGHT,
                  xPosRock, yPosRock);
   stage.addRock("Rock2", ROCK_HEIGHT,
                  xPosRock + 2, yPosRock);
   stage.addRock("Rock3", ROCK_HEIGHT,
           xPosRock + 15, yPosRock);
   /*stage.addAcid(idAcid, ACID_HEIGHT, ACID_WIDTH,
           xPosAcid, yPosAcid);*/

    float metalBlockPosX = 0;
    float metalBlockPosY = 0;
    float metalSide = METAL_SIDE;
    for (int i = 0; i < 40; i += 2){
        stage.addBlock(METAL_BLOCK_NAME, metalSide, metalBlockPosX+i, metalBlockPosY);
        stageView.addTile(metalBlockPosX+i,
                          metalBlockPosY * -1 + stageHeight, metalBlock);
    }
    std::string bb = "RockBlock";

    std::string id_et = "EnergyTransmitter1";
    std::string et = "LounchBlockUp";

    /*stage.addEnergyTransmitterUp(id_et, METAL_SIDE, 8, 2);
    stageView.addTile(8,
                      (2) * -1 + stageHeight, et);*/

    // Time to add some platforms!
    stage.addBlock(METAL_BLOCK_NAME, metalSide, metalBlockPosX + 2, metalBlockPosY + 12);
    stageView.addTile(metalBlockPosX + 2,
                      (metalBlockPosY + 12) * -1 + stageHeight, metalBlock);

    stage.addBlock(METAL_BLOCK_NAME, metalSide, metalBlockPosX + 6, metalBlockPosY + 12);
    stageView.addTile(metalBlockPosX + 6,
                      (metalBlockPosY + 12) * -1 + stageHeight, metalBlock);

    stage.addBlock(METAL_BLOCK_NAME, metalSide, metalBlockPosX + 8, metalBlockPosY + 6);
    stageView.addTile(metalBlockPosX + 8,
                      (metalBlockPosY + 6) * -1 + stageHeight, metalBlock);

    stage.addBlock(METAL_BLOCK_NAME, metalSide, metalBlockPosX + 8, metalBlockPosY + 12);
    stageView.addTile(metalBlockPosX + 8,
                      (metalBlockPosY + 12) * -1 + stageHeight, metalBlock);
    stage.addBlock(METAL_BLOCK_NAME, metalSide, metalBlockPosX + 12, metalBlockPosY + 12);
    stageView.addTile(metalBlockPosX + 12,
                      (metalBlockPosY + 12) * -1 + stageHeight, metalBlock);

    stage.addBlock(METAL_BLOCK_NAME, metalSide, metalBlockPosX + 14, metalBlockPosY + 12);
    stageView.addTile(metalBlockPosX + 14,
                      (metalBlockPosY + 12) * -1 + stageHeight, metalBlock);
    stage.addBlock(METAL_BLOCK_NAME, metalSide, metalBlockPosX + 16, metalBlockPosY + 12);
    stageView.addTile(metalBlockPosX + 16,
                      (metalBlockPosY + 12) * -1 + stageHeight, metalBlock);

    stage.addBlock(METAL_BLOCK_NAME, metalSide, metalBlockPosX + 14, metalBlockPosY + 4);
    stageView.addTile(metalBlockPosX + 14,
                      (metalBlockPosY + 4) * -1 + stageHeight, metalBlock);
    stage.addBlock(METAL_BLOCK_NAME, metalSide, metalBlockPosX + 16, metalBlockPosY + 4);
    stageView.addTile(metalBlockPosX + 16,
                      (metalBlockPosY + 4) * -1 + stageHeight, metalBlock);

    stage.addBlock(METAL_BLOCK_NAME, metalSide, metalBlockPosX + 20, metalBlockPosY + 8);
    stageView.addTile(metalBlockPosX + 20,
                      (metalBlockPosY + 8) * -1 + stageHeight, metalBlock);
    stage.addBlock(METAL_BLOCK_NAME, metalSide, metalBlockPosX + 2, metalBlockPosY + 6);
    stageView.addTile(metalBlockPosX + 2,
                      (metalBlockPosY + 6) * -1 + stageHeight, metalBlock);
    Camera camera(SCREEN_WIDTH, SCREEN_HEIGHT, levelWidth, levelHeight);

    ViewManager viewManager(newWindow, levelHeight,
                            MTP_FACTOR, playerID, objectsData, soundQueue);


    UserEventQueue userEventQueue;
    UserEventHandler userEventHandler(camera, userEventQueue,
                                      idChell, levelHeight,
                                      soundQueue);
    // We share the same queue for now, but once we start to use sockets,
    // we'll use different queues;
    StageManager stageManager(stage, userEventQueue);
    bool quit = false;
    SDL_Event e;
    //audioSystem.playMusic(BG_SONG_GAME);
    const SDL_Rect& cameraRect = camera.getCameraRectangle();
    while (!quit) {
        while (SDL_PollEvent(&e) != 0) {
            userEventHandler.run(e);
            if (e.type == SDL_QUIT){
                quit = true;
            }
        }
        stageManager.run();
        stageUpdateRequest = stage.getCurrentState();
        newWindow.clear();
        SDL_Rect* bgRect = nullptr;
        background.draw(bgRect);
        stageView.draw(cameraRect);
        viewManager.showAndUpdateViews(stageUpdateRequest, camera);
        newWindow.render();
        audioSystem.playSoundEffects();
    }
}

int main(int argc, char* argv[]){
    SDLSession sdlSession(SDL_INIT_VIDEO | SDL_INIT_AUDIO);
    playGame();
}
