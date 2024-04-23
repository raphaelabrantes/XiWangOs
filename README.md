Using meaty-skeleton found in https://gitlab.com/sortie/meaty-skeleton

To autosetup the toolchain just execute the make in the parent directory
```shell
$ make
```
you can use the -j flag the build faster

to build the os
```shell
cd src/
./clean.sh
./headers.sh
./iso.sh
```
to run the os

```shell
./qemu.sh
```