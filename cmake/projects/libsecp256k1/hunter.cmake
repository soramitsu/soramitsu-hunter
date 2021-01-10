# Copyright (c) 2021, Soramitsu Co., Ltd.
# All rights reserved.
# SPDX-License-Identifier: Apache-2.0

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    libsecp256k1
    VERSION
    1.0.0-soramitsu1
    URL
    "https://github.com/soramitsu/soramitsu-libsecp256k1/archive/c7630e1bac638c0f16ee66d4dce7b5c49eecbaa5.zip"
    SHA1
    179e316b0fe5150f1b05ca70ec2ac1490fe2cb3b
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(libsecp256k1)
hunter_download(PACKAGE_NAME libsecp256k1)
