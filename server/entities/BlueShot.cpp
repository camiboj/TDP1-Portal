//
// Created by cecix on 2/06/19.
//

#include <string>

#include <iostream>
#include <Box2D/Dynamics/b2Fixture.h>
#include "BlueShot.h"
#include "MetalBlock.h"
#include "DiagonalMetalBlock.h"

BlueShot::BlueShot(b2Body *body, Chell* chell, Coordinate* target) :
    Shot(BLUE_SHOT_NAME, body, chell, target) {
    body->SetUserData(this);

    //Setting the category and mask bits
    b2Fixture* fixture = body->GetFixtureList();
    b2Filter filter = fixture->GetFilterData();
    filter.categoryBits = 0x1100;
    filter.maskBits = 0xFFFF;
    fixture->SetFilterData(filter);
}

void BlueShot::handleCollision(Entity* entity) {
    const std::string& type = entity->getType();
    if (type == METAL_BLOCK_NAME) {
        MetalBlock* metalBlock = dynamic_cast<MetalBlock*>(entity);
        float x_pos_metal = metalBlock->getHorizontalPosition();
        float y_pos_metal = metalBlock->getVerticalPosition();
        float side_metal = METAL_SIDE;

        float x_pos_blue = getHorizontalPosition();
        float y_pos_orange = getVerticalPosition();

        float x_left = x_pos_metal - side_metal/2;
        float x_right = x_pos_metal + side_metal/2;
        float y_top = y_pos_metal + side_metal/2;
        float y_down = y_pos_metal - side_metal/2;

        bool left_side = x_pos_blue <= x_left;
        bool right_side = x_pos_blue >= x_right;
        bool down_side = y_pos_orange <= y_down;

        float portal_h_side = PORTAL_WIDTH;
        float portal_v_side;

        bool vertical_cond = left_side || right_side;

        if (vertical_cond) {
            if (left_side) {
                Coordinate* coord = new Coordinate(x_left - portal_h_side/2,
                        y_pos_metal);
                Coordinate* coord_to_teleport;
                coord_to_teleport = new Coordinate(x_left - portal_h_side - ROCK_WIDTH,
                        y_pos_metal);
                PortalHolder* bluePortal = new PortalHolder(coord, true, LEFT);
                chell->addBluePortal(bluePortal, coord_to_teleport);
            } else {
                Coordinate* coord = new Coordinate(x_right + portal_h_side/2,
                        y_pos_metal);
                Coordinate* coord_to_teleport;
                coord_to_teleport = new Coordinate(x_left + portal_h_side + ROCK_WIDTH,
                        y_pos_metal);
                PortalHolder* bluePortal = new PortalHolder(coord, true, RIGHT);
                chell->addBluePortal(bluePortal, coord_to_teleport);
            }
        } else {
            portal_v_side = PORTAL_WIDTH;

            if (down_side) {
                Coordinate* coord = new Coordinate(x_pos_metal,
                        y_down - portal_v_side/2);
                Coordinate* coord_to_teleport;
                coord_to_teleport = new Coordinate(x_pos_metal,
                        y_down - portal_v_side);
                PortalHolder* bluePortal = new PortalHolder(coord, false, DOWN);
                chell->addBluePortal(bluePortal, coord_to_teleport);
            } else {
                Coordinate* coord = new Coordinate(x_pos_metal,
                        y_top + portal_v_side/2);
                Coordinate* coord_to_teleport;
                coord_to_teleport = new Coordinate(x_pos_metal,
                        y_top + portal_v_side + CHELL_HEIGHT);
                PortalHolder* bluePortal = new PortalHolder(coord, false, UP);
                chell->addBluePortal(bluePortal, coord_to_teleport);
            }
        }
    }
    die(); //If the shot collides against something it dies
}
