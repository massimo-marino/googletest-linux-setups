#
# download-and-compile-gtest-gmock-1.10.sh
#
# clean
rm -rf googletest
#
# download
git clone https://github.com/google/googletest.git
cd googletest
git checkout origin/v1.10.x
#
# compile
mkdir build
cd build
#
# the option -DINSTALL_GTEST=ON allows the call to 'make install' once the code
# has been compiled
cmake	-DBUILD_SHARED_LIBS=OFF \
	-DCMAKE_BUILD_TYPE=Release \
	-DGTEST_HAS_PTHREAD=1 \
	-DINSTALL_GTEST=OFF \
	-Dgtest_build_samples=ON \
	-Dgtest_build_tests=ON \
	-Dgmock_build_tests=ON \
	..
make -j2
make test
#

