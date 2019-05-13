#ifndef __MYTESTSUITE_H
#define __MYTESTSUITE_H

#include <cxxtest/TestSuite.h>
#include "../server/Stage.h"
#include "../server/Item.h"
#include "../server/RockBlock.h"

  class RockBlockTest : public CxxTest::TestSuite
  {
    size_t width_stage = 500;
    size_t height_stage = 500;
    size_t x_pos = 10;
    size_t y_pos = 10;
    size_t side = 2;

  public:
      void testRockBlock( void ) {
          std::cout << "Testing the rock block dimentions" << std::endl;
          Stage stage(width_stage, height_stage);
          stage.addRockBlock(side, x_pos, y_pos);

          Coordinate *coordinates = new Coordinate(x_pos, y_pos);

          Item *block = stage.getItem(coordinates);

          TS_ASSERT_EQUALS(x_pos, block->getHorizontalPosition());
          TS_ASSERT_EQUALS(y_pos, block->getVerticalPosition());
          TS_ASSERT_EQUALS(side, block->getSide());

          delete coordinates;
      }
  };

class MetalBlockTest : public CxxTest::TestSuite
{
    size_t width_stage = 500;
    size_t height_stage = 500;
    size_t x_pos = 10;
    size_t y_pos = 10;
    size_t side = 2;

public:
    void testMetalBlock( void ) {
        std::cout << "Testing the metal block dimentions" << std::endl;
        Stage stage(width_stage, height_stage);
        stage.addMetalBlock(side, x_pos, y_pos);

        Coordinate *coordinates = new Coordinate(x_pos, y_pos);

        Item *block = stage.getItem(coordinates);

        TS_ASSERT_EQUALS(x_pos, block->getHorizontalPosition());
        TS_ASSERT_EQUALS(y_pos, block->getVerticalPosition());
        TS_ASSERT_EQUALS(side, block->getSide());

        delete coordinates;
    }
};

#endif