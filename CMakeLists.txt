cmake_minimum_required(VERSION 3.10)
project(CmakeHelloWorldTestProject)

set(CMAKE_CXX_STANDARD 20)

add_executable(CmakeHelloWorld main.cpp)

# Place executables in configuration-specific subfolders
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_DEBUG ${CMAKE_BINARY_DIR}/Debug)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_RELEASE ${CMAKE_BINARY_DIR}/Release)
