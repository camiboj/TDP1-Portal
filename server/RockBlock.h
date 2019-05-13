//
// Created by cecix on 13/05/19.
//

#ifndef PORTAL_ROCKBLOCK_H
#define PORTAL_ROCKBLOCK_H

#include <Box2D/Dynamics/b2Body.h>
#include "Item.h"

class RockBlock: public Item {
private:
    size_t side;
    b2Body* body;

public:
    RockBlock(size_t side, b2Body* body);
    virtual float getHorizontalPosition() override;
    virtual float getVerticalPosition() override;
    virtual size_t getSide() override;
};

#endif //PORTAL_ROCKBLOCK_H
