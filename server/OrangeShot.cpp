//
// Created by cecix on 3/06/19.
//

#include "OrangeShot.h"

#define orangeShotType "OrangeShot"

#include <string>
#include <iostream>
#include "OrangeShot.h"
#include "MetalBlock.h"
#include "DiagonalMetalBlock.h"

OrangeShot::OrangeShot(b2Body *body, Chell* chell, Coordinate* target) :
        Shot(orangeShotType, body, chell, target) {
    body->SetUserData(this);
}

void OrangeShot::handleCollision(Entity* entity) {
    std::string type = entity->getType();
    if (type == "MetalBlock") {
        MetalBlock* metalBlock = static_cast<MetalBlock*>(entity);
        metalBlock->createPortal();
        float x = metalBlock->getHorizontalPosition();
        float y = metalBlock->getVerticalPosition();
        Coordinate* portalCoordinates = new Coordinate(x, y);
        chell->addOrangePortal(portalCoordinates);
    }
    if (type == "DiagonalMetalBlock") {
        DiagonalMetalBlock* diagonalBlock;
        diagonalBlock = static_cast<DiagonalMetalBlock*>(entity);
        diagonalBlock->createPortal();
        float x = diagonalBlock->getHorizontalPosition();
        float y = diagonalBlock->getVerticalPosition();
        Coordinate* portalCoordinates = new Coordinate(x, y);
        chell->addOrangePortal(portalCoordinates);
    }
    die(); //If the shot collides against something it dies
}

