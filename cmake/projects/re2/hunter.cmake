# Copyright (c) 2016-2020, Ruslan Baratov, David Hirvonen, Rahul Sheth
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    re2
    VERSION
    2017.11.01-p0
    URL
    https://github.com/hunter-packages/re2/archive/2017.11.01-p0.tar.gz
    SHA1
    78ed8b27fe1499a30281f3763bb282ea47636b1a
)

hunter_add_version(
    PACKAGE_NAME
    re2
    VERSION
    2020.08.01
    URL
    https://github.com/google/re2/archive/2020-08-01.tar.gz
    SHA1
    ac4796e631461c27cd05629097a6931c1d5b13a4
)

hunter_cmake_args(
    re2
    CMAKE_ARGS
      RE2_BUILD_TESTING=OFF
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(re2)
hunter_download(PACKAGE_NAME re2)
