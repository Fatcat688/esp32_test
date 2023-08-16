# Install script for directory: /media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
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
  set(CMAKE_OBJDUMP "/root/.espressif/tools/xtensa-esp32-elf/esp-2021r2-patch5-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mbedtls" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/aes.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/aesni.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/arc4.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/aria.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/asn1.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/asn1write.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/base64.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/bignum.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/blowfish.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/bn_mul.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/camellia.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ccm.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/certs.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/chacha20.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/chachapoly.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/check_config.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/cipher.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/cipher_internal.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/cmac.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/compat-1.3.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/config.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/config_psa.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/constant_time.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ctr_drbg.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/debug.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/des.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/dhm.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecdh.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecdsa.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecjpake.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecp.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecp_internal.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/entropy.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/entropy_poll.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/error.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/gcm.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/havege.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/hkdf.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/hmac_drbg.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/md.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/md2.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/md4.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/md5.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/md_internal.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/memory_buffer_alloc.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/net.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/net_sockets.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/nist_kw.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/oid.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/padlock.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pem.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pk.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pk_internal.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pkcs11.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pkcs12.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pkcs5.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/platform.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/platform_time.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/platform_util.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/poly1305.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/psa_util.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ripemd160.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/rsa.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/rsa_internal.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/sha1.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/sha256.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/sha512.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ssl.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ssl_cache.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ssl_ciphersuites.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ssl_cookie.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ssl_internal.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ssl_ticket.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/threading.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/timing.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/version.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/x509.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/x509_crl.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/x509_crt.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/x509_csr.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/xtea.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/psa" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/psa/crypto.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_builtin_composites.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_builtin_primitives.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_compat.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_config.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_driver_common.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_driver_contexts_composites.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_driver_contexts_primitives.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_extra.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_platform.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_se_driver.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_sizes.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_struct.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_types.h"
    "/media/cool/disc1/esp/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_values.h"
    )
endif()

