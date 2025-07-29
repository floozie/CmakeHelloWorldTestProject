#!/bin/bash
# Build and configure CmakeHelloWorldTestProject in Debug mode with GCC (x86_64)

# Set build directory
BUILD_DIR="$(pwd)/build"
DEBUG_DIR="$BUILD_DIR/Debug"

# Create build and debug directories if they don't exist
mkdir -p "$DEBUG_DIR"

# Clean CMake cache for a fresh configuration
rm -f "$BUILD_DIR/CMakeCache.txt"
rm -rf "$BUILD_DIR/CMakeFiles"

# Run CMake configure step
cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=ON \
      -DCMAKE_BUILD_TYPE=Debug \
      -DCMAKE_RUNTIME_OUTPUT_DIRECTORY="$BUILD_DIR/Debug" \
      -DCMAKE_RUNTIME_OUTPUT_DIRECTORY_DEBUG="$BUILD_DIR/Debug" \
      -S . \
      -B "$BUILD_DIR" \
      -G "Unix Makefiles"

# Build the project
cmake --build "$BUILD_DIR" -j 4

echo "Executable should be in $BUILD_DIR/Debug"

