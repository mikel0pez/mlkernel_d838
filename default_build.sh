#!/bin/sh

# clean stuff
rm ~/android/kernel/out/*

make clean && make mrproper

# set .config file
make mike_defconfig

# build zImage
make ARCH=arm CROSS_COMPILE=~/android/arm-eabi-4.6/bin/arm-eabi- zImage -j4

# build RAMDISK
./executables/mkbootfs ~/android/kernel/ramdisk | gzip > ~/android/kernel/out/ramdisk.gz

# build DTBS
./build_dtbs.sh

# create dt.img
dtbTool -s 2048 -o ~/android/kernel/out/dt.img ~/android/kernel/arch/arm/boot/

# copy stuff to Windows Host machine (temporary stuff)
#cp ~/android/kernel/out/* ~/AndroidWindows/MLKernel_D838/repack
#cp ~/android/kernel/arch/arm/boot/zImage ~/AndroidWindows/MLKernel_D838/repack

./final_build.sh







