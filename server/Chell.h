//
// Created by cecix on 18/05/19.
//

#ifndef PORTAL_CHELL_H
#define PORTAL_CHELL_H

#include <Box2D/Dynamics/b2Body.h>
#include "Dynamic.h"
#include "Entity.h"
#include "Rock.h"
#include "../common/constants.h"

class Chell: public Entity {
private:
    Dynamic dynamic;
    b2Body* body;
    Dynamic* actual_movement;
    bool chell_is_on_floor;
    bool dead;
    Rock* rock;
    State actual_state;

public:
    explicit Chell(b2Body* body);
    ~Chell();

    void moveRight();
    void moveLeft();
    void stop();
    void jump();
    void destroyActualMovement();
    void update();
    float getHorizontalPosition();
    float getVerticalPosition();
    float getHorizontalVelocity();
    float getVerticalVelocity();
    bool inGround();
    void die();
    bool isDead();
    virtual void handleCollision(Entity* entity) override;
    void onFloor(bool onFloor);
    void grabRock(Rock* rock);
    void downloadRock();
    State getState();
    b2Body* getBody();
};

#endif //PORTAL_CHELL_H
