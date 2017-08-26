cmake_minimum_required(VERSION 3.0)
project(ow)

# command line interface
file(GLOB_RECURSE sources src/*.cpp include/*.h)
add_executable(cli ${sources})
target_compile_options(cli PUBLIC -std=c++17 -Wall)

install(TARGETS cli DESTINATION ow-data)
