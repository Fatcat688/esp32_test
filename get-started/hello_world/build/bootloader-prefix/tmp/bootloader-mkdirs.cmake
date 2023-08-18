# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/media/cool/disc1/esp/esp-idf/components/bootloader/subproject"
  "/media/cool/disc1/esp/esp-idf/examples/get-started/hello_world/build/bootloader"
  "/media/cool/disc1/esp/esp-idf/examples/get-started/hello_world/build/bootloader-prefix"
  "/media/cool/disc1/esp/esp-idf/examples/get-started/hello_world/build/bootloader-prefix/tmp"
  "/media/cool/disc1/esp/esp-idf/examples/get-started/hello_world/build/bootloader-prefix/src/bootloader-stamp"
  "/media/cool/disc1/esp/esp-idf/examples/get-started/hello_world/build/bootloader-prefix/src"
  "/media/cool/disc1/esp/esp-idf/examples/get-started/hello_world/build/bootloader-prefix/src/bootloader-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/media/cool/disc1/esp/esp-idf/examples/get-started/hello_world/build/bootloader-prefix/src/bootloader-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/media/cool/disc1/esp/esp-idf/examples/get-started/hello_world/build/bootloader-prefix/src/bootloader-stamp${cfgdir}") # cfgdir has leading slash
endif()
