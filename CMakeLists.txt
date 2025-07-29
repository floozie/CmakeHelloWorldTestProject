cmake_minimum_required(VERSION 3.10)
project(CmakeHelloWorldTestProject)

set(CMAKE_CXX_STANDARD 20)

add_executable(CmakeHelloWorld main.cpp)

# Place executables in configuration-specific subfolders for single-config generators
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/${CMAKE_BUILD_TYPE})
