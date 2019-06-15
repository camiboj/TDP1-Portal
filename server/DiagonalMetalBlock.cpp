//
// Created by cecix on 13/05/19.
//

#include "DiagonalMetalBlock.h"
#include "EnergyBall.h"
#include "Chell.h"
#include "BlueShot.h"
#include "OrangeShot.h"

DiagonalMetalBlock::DiagonalMetalBlock(b2Body* body):
    Entity(DIAGONAL_METAL_BLOCK_NAME, body) {
    body->SetUserData(this); //to handle collisions
}

void DiagonalMetalBlock::handleCollision(Entity* entity) {
    std::string type = entity->getType();
    if (type == "EnergyBall") {
        static_cast<EnergyBall*>(entity)->changeDirection();
    }
    if (type == "BlueShot") {
        static_cast<BlueShot*>(entity)->die();
    }
    if (type == "OrangeShot") {
        static_cast<OrangeShot*>(entity)->die();
    }
}

