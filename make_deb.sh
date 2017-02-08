#!/bin/bash

VERSION="0.1"

rm -r build > /dev/null 2>&1

#prepare location
mkdir -p build/xshot_${VERSION}/usr/local/bin

cp xshot build/xshot_${VERSION}/usr/local/bin/

#ensure executable
chmod +x build/xshot_${VERSION}/usr/local/bin/xshot

#prepare special folder
mkdir -p build/xshot_${VERSION}/DEBIAN

cat>build/xshot_${VERSION}/DEBIAN/control<<EOF
Package: xshot
Version: ${VERSION}
Section: base
Priority: optional
Architecture: all
Depends: curl (>= 7.0.0), xclip (>= 0.10), jq (>= 1.4)
Maintainer: Dionis Argiri <dionis.argiri@gmail.com>
Description: Tiny wrapper around system screenshot utilities that allow you to post your screenshots to Lightshot server.
EOF

dpkg-deb --build build/xshot_${VERSION} || exit 1

# publish build
mkdir -p dist/debs
cp build/xshot_${VERSION}.deb dist/debs/

#clean up
rm -r build

