# CmakeHelloWorldTestProject
# Overview

CmakeHelloWorldTestProject is a simple example project demonstrating how to use CMake to build a basic C++ Hello World application. It is intended for learning and testing CMake build configurations, and can be used as a template for new CMake-based projects.

# Features
- Minimal C++ source code
- CMakeLists.txt for easy configuration
- Cross-platform compatibility

# Getting Started
Clone the repository and use CMake to configure and build the project:

```sh
cmake -S . -B build
cmake --build build
```

# Build Scripts

You can also use the provided scripts for platform-specific builds:

## Windows (Visual Studio 2022, x64)
- Debug build:
  ```bat
  build_debug_amd64visuastudio2022.bat
  ```
- Release build:
  ```bat
  build_release_x64visuastudio2022.bat
  ```

## Linux (GCC, x86_64)
- Debug build:
  ```sh
  ./build_debug_x86_64_gcc.sh
  ```
- Release build:
  ```sh
  ./build_release_x86_64_gcc.sh
  ```

These scripts will configure and build the project in the appropriate mode and architecture for your platform.

# License
This project is provided for educational purposes.
