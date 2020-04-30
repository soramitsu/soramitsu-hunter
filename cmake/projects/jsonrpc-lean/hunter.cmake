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
    0.0.0-6c093da8
    URL
    https://github.com/xDimon/jsonrpc-lean/archive/6c093da8670d7bf56555f166f8b8151f33a5d741.tar.gz
    SHA1
    ab5e65fdf7e929be76bf3fc86531b220cb457091
)

hunter_cmake_args(
    jsonrpc-lean
    CMAKE_ARGS
        BUILD_EXAMPLES=OFF
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(jsonrpc-lean)
hunter_download(PACKAGE_NAME jsonrpc-lean)
