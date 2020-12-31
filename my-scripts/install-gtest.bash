#!/bin/bash
#
# install-gtest.bash
#
# linux install
sudo cp -v ./googletest-release-1.10.0/build/lib/libgmock_main_no_exception.so \
           ./googletest-release-1.10.0/build/lib/libgmock_main_no_rtti.so \
           ./googletest-release-1.10.0/build/lib/libgtest_main_no_rtti.so \
           ./googletest-release-1.10.0/build/lib/libgtest_dll.so \
           ./googletest-release-1.10.0/build/lib/libgmock_main.so \
           ./googletest-release-1.10.0/build/lib/libgtest_main.so \
           ./googletest-release-1.10.0/build/lib/libgtest_main_no_exception.so \
           ./googletest-release-1.10.0/build/lib/libgtest_no_exception.so \
           ./googletest-release-1.10.0/build/lib/libgtest.so \
           ./googletest-release-1.10.0/build/lib/libgmock.so \
           ./googletest-release-1.10.0/build/lib/libshared_gmock_main.so \
           /usr/local/lib/
#
sudo mkdir -pv /usr/local/include/gmock/
sudo mkdir -pv /usr/local/include/gmock/internal/
sudo mkdir -pv /usr/local/include/gmock/internal/custom/
sudo mkdir -pv /usr/local/include/gtest/
sudo mkdir -pv /usr/local/include/gtest/internal/
sudo mkdir -pv /usr/local/include/gtest/internal/custom/
#
sudo cp -v ./googletest-release-1.10.0/googlemock/include/gmock/*.h /usr/local/include/gmock/
sudo cp -v ./googletest-release-1.10.0/googlemock/include/gmock/internal/*.h /usr/local/include/gmock/internal/
sudo cp -v ./googletest-release-1.10.0/googlemock/include/gmock/internal/custom/*.h /usr/local/include/gmock/internal/custom/
sudo cp -v ./googletest-release-1.10.0/googletest/include/gtest/*.h /usr/local/include/gtest/
sudo cp -v ./googletest-release-1.10.0/googletest/include/gtest/internal/*.h /usr/local/include/gtest/internal/
sudo cp -v ./googletest-release-1.10.0/googletest/include/gtest/internal/custom/*.h /usr/local/include/gtest/internal/custom/
#
sudo ldconfig
#

