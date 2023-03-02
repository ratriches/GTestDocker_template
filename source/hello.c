#include "hello.h"
#include "world/world.h"

int func_mult(int a, int b) {
  return a * b;
}

int func_plus(int a, int b) {
  return a + b;
}

int func_mult_div(int a, int b, int c) {
  return func_div((a * b), c);
}
