#!/bin/bash
set -e

CXX=g++-7
CXXFLAGS="-std=c++17 -Wall -g3 -Iinclude/"

CPP_SEARCH=( src/ow )

test -d build/ && rm -rf build/ ||:
mkdir build/

CPP_FILES=()
for path in ${CPP_SEARCH[@]}
    do CPP_FILES+=(`echo $path/*.cpp`)
done

for file in ${CPP_FILES[@]}
    do "$CXX" $CXXFLAGS -c "$file" -o "build/`basename "$file" .cpp`.o"
done

"$CXX" $CXXFLAGS `echo build/*.o` -o build/cli
