#include <gtest/gtest.h>

#include "hello.h"

// C manual mock functions
#ifdef __cplusplus
extern "C" {
#endif

int func_div(int a, int b) { // fake function
  return a * b; // wrong code to facilitate mock validation
}

#ifdef __cplusplus
}
#endif

// Demonstrate some basic assertions.
TEST(HelloTest, func_mult) {
  // Expect two strings not to be equal.
  EXPECT_STRNE("hello", "world");
  // Expect equality.
  EXPECT_EQ(func_mult(7, 6), 42);
}

// Demonstrate some basic assertions.
TEST(HelloTest, func_mult_div) {
  EXPECT_EQ(func_mult_div(7, 6, 2), 84);
}
