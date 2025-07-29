cmake_minimum_required(VERSION 3.10)
project(CmakeHelloWorldTestProject)

set(CMAKE_CXX_STANDARD 20)

add_executable(CmakeHelloWorld main.cpp)

# Handle both single-configuration and multi-configuration generators properly
if(CMAKE_CONFIGURATION_TYPES)
    # Multi-configuration generators (Visual Studio, Xcode)
    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}")
    foreach(config ${CMAKE_CONFIGURATION_TYPES})
        string(TOUPPER ${config} config_upper)
        set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_${config_upper} "${CMAKE_BINARY_DIR}/${config}")
    endforeach()
else()
    # Single-configuration generators (Unix Makefiles, Ninja)
    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/${CMAKE_BUILD_TYPE}")
endif()
