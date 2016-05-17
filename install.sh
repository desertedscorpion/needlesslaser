#!/bin/bash

GCC_VERSION=4.8.2 &&
    dnf update --assumeyes &&
    dnf install --assumeyes git node make python tar which bzip2 ncurses sudo pass &&
    dnf update --assumeyes &&
    dnf clean all &&
    chmod 0555 /opt/needlesslaser/private &&
    chmod 0555 /opt/needlesslaser/input &&
    chmod 0777 /opt/needlesslaser/output &&
    mkdir /opt/needlesslaser/gcc &&
    chmod 0500 /opt/needlesslaser/gcc &&
    cd $(mktemp -d) &&
    curl --output gcc-${GCC_VERSION}.tar.bz2 http://ftp.gnu.org/gnu/gcc/gcc-${GCC_VERSION}/gcc-${GCC_VERSION}.tar.bz2 &&
    bunzip2 gcc-${GCC_VERSION}.tar.bz2 &&
    tar --extract --file gcc-${GCC_VERSION}.tar &&
    ls -lht &&
    cd gcc-${GCC_VERSION} &&
    mkdir build &&
    cd build &&
    ../configure --disable-checking --enable-languages=c,c++ \
		 --enable-multiarch --enable-shared --enable-threads=posix \
		 --program-suffix=4.8 --with-gmp=/usr/local/lib --with-mpc=/usr/lib \
		 --with-mpfr=/usr/lib --without-included-gettext --with-system-zlib \
		 --with-tune=generic \
		 --prefix=/opt/gcc \
		 --disable-multilib &&
    make -j8 &&
    mkdir /opt/needlesslaser/gcc &&
    make DESTDIR=/opt/needlesslaser/gcc install &&
    export PATH=/opt/needlesslaser/gcc/gcc-bin/gcc${VERSION}:${PATH} &&
    mkdir /opt/needlesslaser/c9sdk &&
    chmod 0555 /opt/needlesslaser/c9sdk &&
    git -C /opt/needlesslaser/c9sdk init &&
    git -C /opt/needlesslaser/c9sdk remote add origin git://github.com/c9/core.git &&
    git -C /opt/needlesslaser/c9sdk pull origin master &&
    /opt/needlesslaser/c9sdk/scripts/install-sdk.sh &&
    systemctl enable needlessbeta.service &&
    true
