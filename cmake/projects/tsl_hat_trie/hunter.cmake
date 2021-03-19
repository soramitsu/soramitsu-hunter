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
    tsl_hat_trie
    VERSION
    1.0.0
    URL
    "https://github.com/masterjedy/hat-trie/archive/4fdfc75e75276185eed4b748ea09671601101b8e.tar.gz"
    SHA1
    1b871083877ccbedb69ea5ecbffda3732d125eb7
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(tsl_hat_trie)
hunter_download(PACKAGE_NAME tsl_hat_trie)
