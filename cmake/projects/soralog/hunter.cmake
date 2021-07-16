# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME soralog
    VERSION "0.0.9"
    URL "https://github.com/soramitsu/soralog/archive/v0.0.9.tar.gz"
    SHA1 "a5df392c969136e9cb2891d7cc14e3e6d34107d6"
)

hunter_cmake_args(
    soralog
    CMAKE_ARGS
      TESTING=OFF
      EXAMPLES=OFF
      EXPOSE_MOCKS=ON
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(soralog)
hunter_download(PACKAGE_NAME soralog)
