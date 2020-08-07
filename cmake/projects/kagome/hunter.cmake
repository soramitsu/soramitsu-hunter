# Copyright (c) 2016-2017, Ruslan Baratov
# Copyright (c) 2020, Soramitsu Co., Ltd.
# All rights reserved.
# SPDX-License-Identifier: Apache-2.0

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)
include(hunter_cmake_args)

hunter_add_version(
    PACKAGE_NAME
    kagome
    VERSION
    0.0.1
    URL
    "https://github.com/soramitsu/kagome/archive/v0.0.1.tar.gz"
    SHA1
    b3690c673b48c413b521adec9eeae95ebf283c83
)

hunter_cmake_args(
    kagome
    CMAKE_ARGS
        TESTING=OFF
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(kagome)
hunter_download(PACKAGE_NAME kagome)
