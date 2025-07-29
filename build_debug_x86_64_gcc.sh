#!/bin/bash
# Build and configure CmakeHelloWorldTestProject in Debug mode with GCC (x86_64)

BUILD_DIR="$(pwd)/build"
CMAKE_PATH="cmake"

mkdir -p "$BUILD_DIR"

# Remove CMake cache and CMakeFiles for a clean configure
rm -f "$BUILD_DIR/CMakeCache.txt"
rm -rf "$BUILD_DIR/CMakeFiles"

# Run CMake configure step
$CMAKE_PATH -DCMAKE_EXPORT_COMPILE_COMMANDS=ON -DCMAKE_BUILD_TYPE=Debug -S . -B "$BUILD_DIR" -G "Unix Makefiles"

# Build the project
$CMAKE_PATH --build "$BUILD_DIR" --config Debug --target ALL_BUILD -j 4
