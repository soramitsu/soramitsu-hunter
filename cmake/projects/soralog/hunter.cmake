# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME soralog
    VERSION "0.0.1"
    URL "https://github.com/soramitsu/soralog/archive/v0.0.1.tar.gz"
    SHA1 "9ce9e7a9a4416aa8b02421ff7cf827e1807a1ffc")

hunter_cmake_args(
    soralog
    CMAKE_ARGS
      TESTING=OFF
      EXAMPLES=OFF
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(soralog)
hunter_download(PACKAGE_NAME soralog)
