mkdir -p mingw64_binutils
cd mingw64_binutils
if [ x$ =x"" ]; then
  _HOST=$(./../binutils-2.30/config.guess)
else
  _HOST=$HOST
fi
../binutils-2.30/configure --target=stm8-none-elf32 --program-prefix=stm8- --with-system-readline \
--with-libexpat-prefix=/usr/$_HOST/sys-root/mingw/ --with-python=no LDFLAGS="-static" CFLAGS="-DNCURSES_STATIC" CXXFLAGS="-DNCURSES_STATIC"