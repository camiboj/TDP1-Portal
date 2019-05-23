//
// Created by camix on 21/05/19.
//

#include <iostream>
#include "StageView.h"
#include "../common/Sprite.h"

StageView::StageView(Window &window, int factor, std::unordered_map<std::string, Object*>& textures, std::map<std::pair<int, int>, std::string>& tiles) :
window(window), factor(factor), textures(textures), tiles(tiles) {}

void StageView::draw(SDL_Rect *camera, int xStart) {
    SDL_Rect destRect = {0 , 0, factor, factor};

    int camPosX = camera->x / factor;
    int camPosY = camera->y / factor;
    // We'll draw NxM tiles on the screen, to cover the camera.
    int n = camera->w / factor + 1;
    int m = camera->h / factor + 1;

    Object* object= nullptr;
    for (int i = camPosX; i < camPosX + n; ++i){
        for (int j = camPosY; j < camPosY + m; ++j){
            auto point = tiles.find(std::make_pair(i, j));
            if (point == tiles.end()){
                continue;
            }
            object = textures[point->second];
            if (!object) continue;
            destRect.x = xStart + (point->first.first - camPosX) * factor;
            destRect.y = (point->first.second - camPosY) * factor;
            object->draw(&destRect);
        }
    }
}

StageView::~StageView() {}