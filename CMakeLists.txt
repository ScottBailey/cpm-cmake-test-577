cmake_minimum_required(VERSION 3.30)
project(test_stuff)

# Download CPM.cmake
file(
  DOWNLOAD      https://github.com/cpm-cmake/CPM.cmake/releases/download/v0.40.0/CPM.cmake ${CMAKE_CURRENT_BINARY_DIR}/cmake/CPM.cmake
  EXPECTED_HASH SHA256=7b354f3a5976c4626c876850c93944e52c83ec59a159ae5de5be7983f0e17a2a
)
include(${CMAKE_CURRENT_BINARY_DIR}/cmake/CPM.cmake)

CPMAddPackage(
  NAME testpack-adder
  GIT_REPOSITORY https://github.com/cpm-cmake/testpack-adder
  GIT_TAG v1.0.0
  OPTIONS "ADDER_BUILD_TESTS OFF" "ADDER_BUILD_EXAMPLES OFF"
  PATCHES
    patches/001-test_patches_command.patch
    patches/002-test_patches_command.patch
)
