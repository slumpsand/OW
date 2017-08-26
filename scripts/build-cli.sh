#!/bin/bash
set -e

echo "`tput setaf 3 && tput bold`--- starting build`tput sgr0`"

test -d build/ && rm -rf build/ ||:
mkdir build/ && cd build/

cmake ..
make

echo "`tput setaf 3 && tput bold`--- build complete`tput sgr0`"
