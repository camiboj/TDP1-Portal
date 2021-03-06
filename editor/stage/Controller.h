//
// Created by camix on 20/05/19.
//

#ifndef PORTAL_CONTROLLER_H
#define PORTAL_CONTROLLER_H



#include <unordered_map>
#include <map>
#include <yaml-cpp/node/node.h>

#include "LogicGates.h"
#include "../../common/Window.h"
#include "../../common/Sprite.h"
#include "View.h"
#include "object/Object.h"
#include "YamlManager.h"


class Controller {
private:
    std::unordered_map<int, Object*> textures;
    std::map<std::pair<int, int>, int> tiles;
    //std::map<std::string, bool> gravity;
    int factor;
    View stageView;
    LogicGates logicGates;
    YamlManager yaml;
    std::string texturesPath;


public:
    Controller(Window &window, std::string texturesPath, int factor, std::string &stageYamlPath);
    ~Controller();

    void draw(SDL_Rect *camera, int xStart);

    void addTile(int x, int y, int id);

    void removeTile(int x, int y);

    int getName(int x, int y);

    void nameAnObject(int x,
                      int y,
                      Window &window,
                      SDL_Rect rect,
                      SDL_Rect* camera,
                      int yStart);

    void addCondition(int x,
                      int y,
                      Window &window,
                      SDL_Rect rect,
                      SDL_Rect* camera,
                      int yStart);

    void writeYaml(std::string &yamlPath);

    void drawCurrent(int id, int x, int y);
};


#define ADD_TILE "Couldn't add the tile. That's not a valid place\n"
#define NAME_EXC "Couldn't add the tile. That's not a valid element!\n"
#define POSITION_EXC "Couldn't get tile's name. That's position is empty!\n"
#define REMOVE_TILE  "Couldn't remove the tile\n"
#define INVALID_CONDITION_EXC "Invalid condition\n"


class StageControllerException : public std::exception {};

class StageControllerNameException : public StageControllerException {
public:
    const char* what() const noexcept override {
        return NAME_EXC;
    }
};

class StageControllerAddTileException : public StageControllerException {
public:
    const char* what() const noexcept override {
        return ADD_TILE;
    }
};

class StageControllerRemoveTileException : public StageControllerException {
public:
    const char* what() const noexcept override {
        return REMOVE_TILE;
    }
};

class StageControllerEmptyPositionException : public StageControllerException {
public:
    const char* what() const noexcept override {
        return POSITION_EXC;
    }
};

#endif //PORTAL_CONTROLLER_H
