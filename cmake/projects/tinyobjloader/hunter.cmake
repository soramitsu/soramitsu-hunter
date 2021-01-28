# Copyright (c) 2020, Rahul Sheth
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    tinyobjloader
    VERSION
    2.0.0-rc6-bec38e3
    URL
    "https://github.com/tinyobjloader/tinyobjloader/archive/bec38e3bbfe56e6cf218d30375d3990ffbd9e362.tar.gz"
    SHA1
    bd8ff0ae60d5d6f84656dcbcdea9ffc0dd1b0603
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(tinyobjloader)
hunter_download(PACKAGE_NAME tinyobjloader)
