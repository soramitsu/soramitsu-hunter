cmake_minimum_required(VERSION 3.2)

# Emulate HunterGate:
# * https://github.com/hunter-packages/gate
include("../common.cmake")

project(download-kagome)

hunter_add_package(kagome)

find_package(kagome CONFIG REQUIRED)

add_executable(download_kagome main.cpp)

target_link_libraries(download_kagome kagome::kagome)
