#!/bin/bash

PACKAGE_NAME=$1
PACKAGE_VERSION=$2
PACKAGE_URL=$3

if [[ "$OSTYPE" == "darwin"* ]]; then
    SED_EXECUTABLE=gsed
    if command -v $SED_EXECUTABLE > /dev/null 2>&1; then
        echo "Found gsed"
    else
        echo "GNU sed not installed. Try brew install gsed."
        exit 1
    fi
else
    SED_EXECUTABLE=sed
fi

echo "Creating package files for $PACKAGE_NAME"

winpty wget $3 -O package.tar.gz
PACKAGE_SHA1=$(openssl sha1 package.tar.gz | $SED_EXECUTABLE 's/^.* //')
rm package.tar.gz

cp -r cmake/projects/foo cmake/projects/$PACKAGE_NAME
$SED_EXECUTABLE -i "s,foo,$PACKAGE_NAME,g" cmake/projects/$PACKAGE_NAME/hunter.cmake
$SED_EXECUTABLE -i "s,\"https.*\",\"$PACKAGE_URL\",g" cmake/projects/$PACKAGE_NAME/hunter.cmake
$SED_EXECUTABLE -i "s,[1]\{40\},$PACKAGE_SHA1,g" cmake/projects/$PACKAGE_NAME/hunter.cmake
$SED_EXECUTABLE -i "s,1\.0\.0,$PACKAGE_VERSION,g" cmake/projects/$PACKAGE_NAME/hunter.cmake

cp -r examples/foo examples/$PACKAGE_NAME
$SED_EXECUTABLE -i "s,foo,$PACKAGE_NAME,g" examples/$PACKAGE_NAME/*

cp -r docs/packages/pkg/foo.rst docs/packages/pkg/$PACKAGE_NAME.rst
$SED_EXECUTABLE -i "s,foo,$PACKAGE_NAME,g" docs/packages/pkg/$PACKAGE_NAME.rst
