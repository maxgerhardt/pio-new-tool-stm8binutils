#!/bin/sh
wget -nv -nc https://ftp.gnu.org/gnu/binutils/binutils-2.30.tar.xz
wget -nv -nc https://ftp.gnu.org/gnu/gdb/gdb-8.1.tar.xz
mkdir -p binutils-2.30
tar -xf gdb-8.1.tar.xz --strip-components=1 --directory=binutils-2.30
tar -xf binutils-2.30.tar.xz
for f in ./binutils_patches/*.patch
do
patch -N -p 1 -d binutils-2.30 <$f
done
