#!/bin/bash
#
# compile-gtest.bash
#
# compile
cd googletest-release-*
rm -rf build
mkdir build
cd build
cmake	-DBUILD_SHARED_LIBS=ON \
	-DCMAKE_BUILD_TYPE=Release \
	-DGTEST_HAS_PTHREAD=1 \
	-DINSTALL_GTEST=OFF \
	-Dgtest_build_samples=ON \
	-Dgtest_build_tests=ON \
	-Dgmock_build_tests=ON \
	-DCMAKE_INSTALL_PREFIX:PATH=/usr \
	..
make -j2
make test
#

