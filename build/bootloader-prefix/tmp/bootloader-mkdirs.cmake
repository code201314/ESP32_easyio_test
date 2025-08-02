# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/bootloader/subproject"
  "Z:/ESP32/easyio_test/build/bootloader"
  "Z:/ESP32/easyio_test/build/bootloader-prefix"
  "Z:/ESP32/easyio_test/build/bootloader-prefix/tmp"
  "Z:/ESP32/easyio_test/build/bootloader-prefix/src/bootloader-stamp"
  "Z:/ESP32/easyio_test/build/bootloader-prefix/src"
  "Z:/ESP32/easyio_test/build/bootloader-prefix/src/bootloader-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "Z:/ESP32/easyio_test/build/bootloader-prefix/src/bootloader-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "Z:/ESP32/easyio_test/build/bootloader-prefix/src/bootloader-stamp${cfgdir}") # cfgdir has leading slash
endif()
