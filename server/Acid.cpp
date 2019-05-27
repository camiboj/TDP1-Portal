//
// Created by cecix on 18/05/19.
//

#include "Acid.h"
#include "Chell.h"

#define acidType "Acid"

Acid::Acid(b2Body* body):
    Entity(acidType),
    body(body) {
    body->SetUserData(this);
}

float Acid::getHorizontalPosition() {
    return this->body->GetPosition().x;
}

float Acid::getVerticalPosition() {
    return this->body->GetPosition().y;
}

void Acid::handleCollision(Entity *entity) {
    std::string type = entity->getType();
    if (type == "Chell") {
        static_cast<Chell*>(entity)->die();
    }
}
