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
    "https://github.com/soramitsu/cpp-libp2p/archive/v0.0.1-p0.tar.gz"
    SHA1
    cc0ecbc75a9afb556fd32276e09e3e0a4f347370
)

hunter_add_version(
    PACKAGE_NAME
    libp2p
    VERSION
    0.0.2
    URL
    "https://github.com/soramitsu/cpp-libp2p/archive/v0.0.2.tar.gz"
    SHA1
    197bf8a8ed89b2cbdc5ccbdc8ec01be23ee5d2f7
)

hunter_add_version(
    PACKAGE_NAME
    libp2p
    VERSION
    0.0.2-p0
    URL
    "https://github.com/soramitsu/cpp-libp2p/archive/v0.0.2-p0.tar.gz"
    SHA1
    6156058ee32588502d0f5b8e7899f33a8de0476f
)

hunter_add_version(
    PACKAGE_NAME libp2p
    VERSION 0.0.2-p1
    URL "https://github.com/libp2p/cpp-libp2p/archive/0.0.2-p1.tar.gz"
    SHA1 23350b7e2b306bd306b4989b8a08da94ed732fb0
)

hunter_cmake_args(
    libp2p
    CMAKE_ARGS
        TESTING=OFF
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(libp2p)
hunter_download(PACKAGE_NAME libp2p)
