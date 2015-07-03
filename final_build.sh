#!/bin/sh

# this assumes that zImage, dt.img and ramdisk.cpio.lz4 exists

mkbootimg --kernel ~/android/kernel/arch/arm/boot/zImage --ramdisk ~/android/kernel/ramdisk/ramdisk.cpio.lz4 --cmdline "console=ttyHSL0,115200,n8 user_debug=31 ehci-hcd.park=3 msm_rtb.filter=0x0 androidboot.hardware=b1w" --base 00000000 --pagesize 2048 --offset 02000000 --dt ~/android/kernel/out/dt.img -o ~/android/kernel/out/boot.img

# Bump boot.img
python ~/android/Open_Bump/open_bump.py ~/android/kernel/out/boot.img

# Copy back boot_bumped.img to Windows for flashing
cp ~/android/kernel/out/boot_bumped.img ~/AndroidWindows/MLKernel_D838/boot.img

