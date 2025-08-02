# Install script for directory: Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/blink")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "Z:/ESP32/Espressif/tools/xtensa-esp-elf/esp-13.2.0_20240530/xtensa-esp-elf/bin/xtensa-esp32-elf-objdump.exe")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mbedtls" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/aes.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/aria.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/asn1.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/asn1write.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/base64.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/bignum.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/block_cipher.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/build_info.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/camellia.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/ccm.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/chacha20.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/chachapoly.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/check_config.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/cipher.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/cmac.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/compat-2.x.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/config_adjust_legacy_crypto.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/config_adjust_legacy_from_psa.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/config_adjust_psa_from_legacy.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/config_adjust_psa_superset_legacy.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/config_adjust_ssl.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/config_adjust_x509.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/config_psa.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/constant_time.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/ctr_drbg.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/debug.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/des.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/dhm.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/ecdh.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/ecdsa.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/ecjpake.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/ecp.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/entropy.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/error.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/gcm.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/hkdf.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/hmac_drbg.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/lms.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/mbedtls_config.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/md.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/md5.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/memory_buffer_alloc.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/net_sockets.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/nist_kw.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/oid.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/pem.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/pk.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/pkcs12.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/pkcs5.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/pkcs7.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/platform.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/platform_time.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/platform_util.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/poly1305.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/private_access.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/psa_util.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/ripemd160.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/rsa.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/sha1.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/sha256.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/sha3.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/sha512.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/ssl.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/ssl_cache.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/ssl_ciphersuites.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/ssl_cookie.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/ssl_ticket.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/threading.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/timing.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/version.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/x509.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/x509_crl.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/x509_crt.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/mbedtls/x509_csr.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/psa" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/psa/build_info.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/psa/crypto.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/psa/crypto_adjust_auto_enabled.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/psa/crypto_adjust_config_key_pair_types.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/psa/crypto_adjust_config_synonyms.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/psa/crypto_builtin_composites.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/psa/crypto_builtin_key_derivation.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/psa/crypto_builtin_primitives.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/psa/crypto_compat.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/psa/crypto_config.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/psa/crypto_driver_common.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/psa/crypto_driver_contexts_composites.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/psa/crypto_driver_contexts_key_derivation.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/psa/crypto_driver_contexts_primitives.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/psa/crypto_extra.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/psa/crypto_legacy.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/psa/crypto_platform.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/psa/crypto_se_driver.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/psa/crypto_sizes.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/psa/crypto_struct.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/psa/crypto_types.h"
    "Z:/ESP32/Espressif/frameworks/esp-idf-v5.3.1/components/mbedtls/mbedtls/include/psa/crypto_values.h"
    )
endif()

