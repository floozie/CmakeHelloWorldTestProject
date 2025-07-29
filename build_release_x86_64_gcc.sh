#!/bin/bash
# Build and configure CmakeHelloWorldTestProject in Release mode with GCC (x86_64)

# Set build directory
BUILD_DIR="$(pwd)/build"
RELEASE_DIR="$BUILD_DIR/Release"

# Create build and release directories if they don't exist
mkdir -p "$RELEASE_DIR"

# Clean CMake cache for a fresh configuration
rm -f "$BUILD_DIR/CMakeCache.txt"
rm -rf "$BUILD_DIR/CMakeFiles"

# Run CMake configure step
cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=ON \
      -DCMAKE_BUILD_TYPE=Release \
      -DCMAKE_RUNTIME_OUTPUT_DIRECTORY="$RELEASE_DIR" \
      -DCMAKE_RUNTIME_OUTPUT_DIRECTORY_RELEASE="$RELEASE_DIR" \
      -S . \
      -B "$BUILD_DIR" \
      -G "Unix Makefiles"

# Build the project
cmake --build "$BUILD_DIR" -j 4

echo "Executable should be in $RELEASE_DIR"
