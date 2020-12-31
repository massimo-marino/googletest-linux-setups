#
# install-gtest-gmock.sh
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
# install
sudo make install
sudo ldconfig
#
# check the contents of install_manifest.txt for the list of files installed
#

