# Copyright (c) 2016-2020, Rahul Sheth, Ruslan Baratov
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    xatlas
    VERSION
    0.0.0-4077f0e-p0
    URL
    "https://github.com/cpp-pm/xatlas/archive/v0.0.0-4077f0e-p0.tar.gz"
    SHA1
    c4352e9b256ad13d9f18cdf098cf7e7e536c89f7
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(xatlas)
hunter_download(PACKAGE_NAME xatlas)
