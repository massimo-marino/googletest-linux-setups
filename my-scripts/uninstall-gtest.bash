#!/bin/bash
#
# uninstall-gtest.bash
#
# linux uninstall
sudo rm -fv /usr/local/lib/libgmock_main_no_exception.so \
            /usr/local/lib/libgmock_main_no_rtti.so \
            /usr/local/lib/libgtest_main_no_rtti.so \
            /usr/local/lib/libgtest_dll.so \
            /usr/local/lib/libgmock_main.so \
            /usr/local/lib/libgtest_main.so \
            /usr/local/lib/libgtest_main_no_exception.so \
            /usr/local/lib/libgtest_no_exception.so \
            /usr/local/lib/libgtest.so \
            /usr/local/lib/libgmock.so \
            /usr/local/lib/libshared_gmock_main.so
#
sudo rm -rfv /usr/local/include/gmock/ \
             /usr/local/include/gtest/
#

