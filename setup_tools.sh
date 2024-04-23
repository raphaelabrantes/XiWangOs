export BASE_PWD=$(pwd)
export PREFIX="$BASE_PWD/opt/cross/"
export TARGET=i686-elf
export PATH="$PREFIX/bin:$PATH"

cd $BASE_PWD/src/binutils
$BASE_PWD/build_tools/binutils-2.41/configure --target=$TARGET --prefix="$PREFIX" --with-sysroot --disable-nls --disable-werror
make
make install
cd $BASE_PWD/src/gcc
$BASE_PWD/build_tools/gcc-13.2.0/configure --target=$TARGET --prefix="$PREFIX" --disable-nls --enable-languages=c,c++ --without-headers
make all-gcc
make all-target-libgcc
make install-gcc
make install-target-libgcc
