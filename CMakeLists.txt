cmake_minimum_required(VERSION 3.0)
project(ow)

set(LANGUAGE c++)
set(CMAKE_CXX_COMPILER g++-7)

# command line interface
file(GLOB_RECURSE sources src/*.cpp include/*.h)
add_executable(cli ${sources})
target_compile_options(cli PUBLIC -std=c++17 -Wall)

target_include_directories(cli PUBLIC include)
