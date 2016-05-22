#!/bin/bash

chmod 0500 /opt/needlesslaser/sbin/* &&
chmod 0555 /opt/needlesslaser/bin/* &&
dnf update --assumeyes &&
dnf install --assumeyes git nodejs make python tar which bzip2 ncurses gmp-devel mpfr-devel libmpc-devel glibc-devel flex bison glibc-static zlib-devel gcc gcc-c++ sudo bash-completion pass gnupg gnupg2 &&
dnf update --assumeyes &&
dnf clean all &&
    mkdir /opt/needlesslaser/c9sdk &&
    chmod 0555 /opt/needlesslaser/c9sdk &&
    git -C /opt/needlesslaser/c9sdk init &&
    git -C /opt/needlesslaser/c9sdk remote add origin git://github.com/c9/core.git &&
    git -C /opt/needlesslaser/c9sdk pull origin master &&
    /opt/needlesslaser/c9sdk/scripts/install-sdk.sh &&
    adduser --create-home user &&
    su --login user /opt/needlesslaser/bin/setup &&
    true
