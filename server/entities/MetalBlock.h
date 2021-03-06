//
// Created by cecix on 13/05/19.
//

#ifndef PORTAL_METALBLOCK_H
#define PORTAL_METALBLOCK_H

#include <Box2D/Dynamics/b2Body.h>
#include "Entity.h"
#include "stage-support/Coordinate.h"

class MetalBlock: public Entity {
public:
    explicit MetalBlock(b2Body* body);

    /* Handles collision against other objects in the world */
    void handleCollision(Entity* entity) override;
};

#endif //PORTAL_METALBLOCK_H
