# Copyright (c) 2016-2020, Rahul Sheth, Ruslan Baratov
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)


hunter_add_version(
    PACKAGE_NAME
    tsl_hat_trie
    VERSION
    1.0.0
    URL
    "https://github.com/masterjedy/hat-trie/archive/4fdfc75e75276185eed4b748ea09671601101b8e.tar.gz"
    SHA1
    1b871083877ccbedb69ea5ecbffda3732d125eb7
)

hunter_add_version(
    PACKAGE_NAME
    tsl_hat_trie
    VERSION
    0.6.0-1739fa1-p0
    URL
    "https://github.com/cpp-pm/hat-trie/archive/v0.6.0-1739fa1-p0.tar.gz"
    SHA1
    ef3f4518d5463779088c1a6ae4772630e6e47b53
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(tsl_hat_trie)
hunter_download(PACKAGE_NAME tsl_hat_trie)
