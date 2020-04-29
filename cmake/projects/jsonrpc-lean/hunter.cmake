# Copyright (c) 2016-2017, Ruslan Baratov
# Copyright (c) 2020, Soramitsu Co., Ltd.
# All rights reserved.
# SPDX-License-Identifier: Apache-2.0

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    jsonrpc-lean
    VERSION
    0.0.0-e7667a3d
    URL
    https://github.com/xDimon/jsonrpc-lean/archive/e7667a3dadcee71617ffe359def8e7070a257b11.tar.gz
    SHA1
    6d47b02446e58c77e56c42f42e6a06af60bd0b9c
)

hunter_cmake_args(
    jsonrpc-lean
    CMAKE_ARGS
        BUILD_EXAMPLES=OFF
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(jsonrpc-lean)
hunter_download(PACKAGE_NAME jsonrpc-lean)
