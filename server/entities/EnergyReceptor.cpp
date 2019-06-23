#include <utility>

//
// Created by cecix on 15/06/19.
//

#include "EnergyReceptor.h"

EnergyReceptor::EnergyReceptor(b2Body* body, std::string type):
        ItemActivable(std::move(type), body) {
    body->SetUserData(this);
}

void EnergyReceptor::handleCollision(Entity* entity) {
}
