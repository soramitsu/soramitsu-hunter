# Copyright (c) 2016-2017, Ruslan Baratov
# Copyright (c) 2017, David Hirvonen
# All rights reserved.
# SPDX-License-Identifier: Apache-2.0

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    absl
    VERSION
    20200225.2
    URL
    "https://github.com/abseil/abseil-cpp/archive/20200225.2.tar.gz"
    SHA1
    f8207455be29fa9b0fc80393f63df49a85212084
    )


hunter_cmake_args(absl CMAKE_ARGS
    ABSL_RUN_TESTS=OFF
    ABSL_USE_GOOGLETEST_HEAD=OFF
  )

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(absl)
hunter_download(PACKAGE_NAME absl)
