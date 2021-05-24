# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME soralog
    VERSION "0.0.5"
    URL  "https://github.com/soramitsu/soralog/archive/v0.0.5.tar.gz"
    SHA1 "8b192d0e4cced8743b8a5e943cd0a89a5ad7939d"
)

hunter_add_version(
    PACKAGE_NAME soralog
    VERSION "0.0.6"
    URL "https://github.com/soramitsu/soralog/archive/v0.0.6.tar.gz"
    SHA1 "67a03e76c8bfb5e72f295688d194015ca62e8ed1")

hunter_add_version(
    PACKAGE_NAME soralog
    VERSION "0.0.6"
    URL "https://github.com/soramitsu/soralog/archive/v0.0.6.tar.gz"
    SHA1 "67a03e76c8bfb5e72f295688d194015ca62e8ed1")

hunter_cmake_args(
    soralog
    CMAKE_ARGS
      TESTING=OFF
      EXAMPLES=OFF
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(soralog)
hunter_download(PACKAGE_NAME soralog)
