mkdir -p mingw64_binutils
cd mingw64_binutils
if [ x$HOST=x"" ]; then
  _HOST=$(./../binutils-2.30/config.guess)
else
  _HOST=$HOST
fi
../binutils-2.30/configure --host=$_HOST --build=$_HOST --target=stm8-none-elf32 --program-prefix=stm8- --with-system-readline \
--with-libexpat-prefix=/usr/$_HOST/sys-root/mingw/ LDFLAGS=-static
