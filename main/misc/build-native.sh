#!/bin/bash

# Exit on errors
set -e

if [ "x$1" = "x" ]; then
    ndk-build  -j 8 USE_BREAKPAD=0
else
  ndk-build $@
fi

if [ $? = 0 ]; then
	rm -rf ovpnlibs/

	cd libs
	mkdir -p ../ovpnlibs/assets
	for i in *
	do
		cp -v $i/nopie_openvpn ../ovpnlibs/assets/nopie_openvpn.$i
		cp -v $i/pie_openvpn ../ovpnlibs/assets/pie_openvpn.$i
	done
	# Removed compiled openssl libs, will use platform so libs 
	# Reduces size of apk
    #
	rm -v */libcrypto.so */libssl.so

  	for arch in *
  	do
  	    builddir=../ovpnlibs/jniLibs/$arch
  	    mkdir -p $builddir
  		cp -v $arch/*.so  $builddir
  	done
else
    exit $?
fi
