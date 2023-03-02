#include <gtest/gtest.h>

#include "world/world.h"

// Demonstrate some basic assertions.
TEST(worldTest, BasicAssertions) {
  // Expect two strings not to be equal.
  EXPECT_STRNE("hello", "world");
  // Expect equality.
  EXPECT_EQ(func_div(12, 6), 2);
}
