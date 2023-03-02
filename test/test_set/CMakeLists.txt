# NOTE: file based on https://google.github.io/googletest/quickstart-cmake.html

cmake_minimum_required(VERSION 3.14)
project(my_project)

# GoogleTest requires at least C++14
set(CMAKE_CXX_STANDARD 14)

include(FetchContent)
FetchContent_Declare(
  googletest
  # URL https://github.com/google/googletest/archive/03597a01ee50ed33e9dfd640b249b4be3799d395.zip
  URL https://github.com/google/googletest/archive/2d4f208765af7fa376b878860a7677ecc0bc390a.zip
)
# For Windows: Prevent overriding the parent project's compiler/linker settings
set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)
FetchContent_MakeAvailable(googletest)

enable_testing()

set(basedir ../src/)
set(basetestdir ../testsrc/)
include_directories(${basedir})

add_executable(
  hello_test
  ${basedir}hello.c
  ${basetestdir}test_hello.cc
  ${basedir}world/world.c
  ${basetestdir}world/test_world.cc
)
target_link_libraries(
  hello_test
  GTest::gtest_main
)

include(GoogleTest)
gtest_discover_tests(hello_test)

