# Install script for directory: /Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include

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
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
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

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mbedtls" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/aes.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/aesni.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/arc4.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/aria.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/asn1.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/asn1write.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/base64.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/bignum.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/blowfish.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/bn_mul.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/camellia.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/ccm.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/certs.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/chacha20.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/chachapoly.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/check_config.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/cipher.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/cipher_internal.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/cmac.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/compat-1.3.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/config.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/ctr_drbg.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/debug.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/des.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/dhm.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/ecdh.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/ecdsa.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/ecjpake.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/ecp.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/ecp_internal.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/entropy.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/entropy_poll.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/error.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/gcm.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/havege.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/hkdf.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/hmac_drbg.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/md.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/md2.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/md4.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/md5.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/md_internal.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/memory_buffer_alloc.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/net.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/net_sockets.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/nist_kw.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/oid.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/padlock.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/pem.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/pk.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/pk_internal.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/pkcs11.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/pkcs12.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/pkcs5.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/platform.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/platform_time.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/platform_util.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/poly1305.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/ripemd160.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/rsa.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/rsa_internal.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/sha1.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/sha256.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/sha512.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/ssl.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/ssl_cache.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/ssl_ciphersuites.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/ssl_cookie.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/ssl_internal.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/ssl_ticket.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/threading.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/timing.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/version.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/x509.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/x509_crl.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/x509_crt.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/x509_csr.h"
    "/Users/calvinphly/Desktop/RoqosInc/ics-openvpn/main/src/main/cpp/mbedtls/include/mbedtls/xtea.h"
    )
endif()

