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
    libp2p
    VERSION
    0.0.1
    URL
    "https://github.com/soramitsu/cpp-libp2p/archive/v0.0.1.tar.gz"
    SHA1
    3107cdb5d073c862c9a2b3316eeff71b5eaec14c
)

hunter_add_version(
    PACKAGE_NAME
    libp2p
    VERSION
    0.0.1-p0
    URL
    "https://github.com/soramitsu/cpp-libp2p/archive/1c5764c7b9862ed75173a020d8ac467a6a038136.zip"
    SHA1
    104bed1ec760dc042da322c3dd7358b6a21b26d8
)

hunter_cmake_args(
    libp2p
    CMAKE_ARGS
        TESTING=OFF
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(libp2p)
hunter_download(PACKAGE_NAME libp2p)
