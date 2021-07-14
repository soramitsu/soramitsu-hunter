# Copyright (c) 2016-2019, Ruslan Baratov
# All rights reserved.

cmake_minimum_required(VERSION 3.2)

# Emulate HunterGate:
# * https://github.com/hunter-packages/gate
include("../common.cmake")

project(download-wavm)

# DOCUMENTATION_START {
hunter_add_package(wavm)
find_package(WAVM CONFIG REQUIRED)

add_executable(boo main.cpp)
target_link_libraries(boo PUBLIC WAVM::libWAVM)
# DOCUMENTATION_END }
