@echo off
REM Build script for CmakeHelloWorldTestProject using Visual Studio 2022 amd64 generator

set BUILD_DIR=%~dp0build
set CMAKE_PATH=C:\Program Files\Microsoft Visual Studio\2022\Professional\Common7\IDE\CommonExtensions\Microsoft\CMake\CMake\bin\cmake.EXE

if not exist %BUILD_DIR% mkdir %BUILD_DIR%


REM Remove CMake cache and CMakeFiles directory for a clean configure
if exist %BUILD_DIR%\CMakeCache.txt del /f /q %BUILD_DIR%\CMakeCache.txt
if exist %BUILD_DIR%\CMakeFiles rmdir /s /q %BUILD_DIR%\CMakeFiles


REM Run CMake configure step
"%CMAKE_PATH%" -DCMAKE_EXPORT_COMPILE_COMMANDS:BOOL=TRUE --no-warn-unused-cli -S "%~dp0." -B "%BUILD_DIR%" -G "Visual Studio 17 2022" -A x64 -T host=x64 -DCMAKE_BUILD_TYPE=Debug

REM Build the project
"%CMAKE_PATH%" --build "%BUILD_DIR%" --config Debug --target ALL_BUILD -j 4 --
