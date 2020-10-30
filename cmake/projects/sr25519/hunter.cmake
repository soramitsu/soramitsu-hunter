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
    schnorrkel_crust
    VERSION
    0.0.0
    URL https://github.com/soramitsu/soramitsu-sr25519-crust/archive/f2ab23af56bba1ba611b7be8d9bbafd63a22dec3.zip
    SHA1 767099ca5a3ae806a893c7f5cf6e3631da486e3d
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(schnorrkel_crust)
hunter_download(PACKAGE_NAME schnorrkel_crust)


