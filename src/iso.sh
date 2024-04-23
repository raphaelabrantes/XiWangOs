#!/bin/sh
set -e
. ./build.sh

mkdir -p isodir
mkdir -p isodir/boot
mkdir -p isodir/boot/grub

cp sysroot/boot/XiWangOS.kernel isodir/boot/XiWangOS.kernel
cat > isodir/boot/grub/grub.cfg << EOF
menuentry "XiWangOS" {
	multiboot /boot/XiWangOS.kernel
}
EOF
grub-mkrescue -o XiWangOS.iso isodir
