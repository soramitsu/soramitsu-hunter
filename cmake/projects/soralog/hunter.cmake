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
    SHA1 "84747bf7de1dfb561a914d557b115f4bb6c93058")

hunter_cmake_args(
    soralog
    CMAKE_ARGS
      TESTING=OFF
      EXAMPLES=OFF
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(soralog)
hunter_download(PACKAGE_NAME soralog)
