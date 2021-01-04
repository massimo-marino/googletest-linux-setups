#
# download-compile-and-install-gtest-gmock-1.8.sh
#
# clean
rm -rf googletest
#
# download
git clone https://github.com/google/googletest.git
cd googletest
git checkout origin/v1.8.x
#
# compile
mkdir build
cd build
#
cmake   -DBUILD_SHARED_LIBS=OFF \
        -DGTEST_HAS_PTHREAD=1 \
        -DINSTALL_GTEST=OFF \
        -Dgtest_build_samples=ON \
        -Dgtest_build_tests=ON \
        ..
make -j2
make test
#
# install
sudo mkdir /usr/local/Cellar/gtest/
sudo cp ./googlemock/gtest/libgtest.a /usr/local/Cellar/gtest/
sudo cp ./googlemock/libgmock.a /usr/local/Cellar/gtest/
sudo cp -r ../googletest/include /usr/local/Cellar/gtest/
sudo cp -r ../googlemock/include /usr/local/Cellar/gmock/
sudo ln -snf /usr/local/Cellar/gtest/libgtest.a /usr/local/lib/libgtest.a
sudo ln -snf /usr/local/Cellar/gtest/libgmock.a /usr/local/lib/libgmock.a
sudo ln -snf ../Cellar/gtest/include/gtest /usr/local/include/gtest
sudo ln -snf ../Cellar/gmock/gmock /usr/local/include/gmock

