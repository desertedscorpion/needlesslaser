#!/bin/bash

dnf update --assumeyes &&
dnf install --assumeyes git node make python tar which bzip2 ncurses gmp-devel mpfr-devel libmpc-devel glibc-devel flex bison glibc-static zlib-devel sudo pass &&
dnf update --assumeyes &&
dnf clean all &&
true
