#!/bin/sh
make ARCH=arm CROSS_COMPILE=~/android/arm-eabi-4.6/bin/arm-eabi- mike_defconfig msm8974-v2-b1-kr.dtb
make ARCH=arm CROSS_COMPILE=~/android/arm-eabi-4.6/bin/arm-eabi- mike_defconfig msm8974-v2-2-b1-kr.dtb
make ARCH=arm CROSS_COMPILE=~/android/arm-eabi-4.6/bin/arm-eabi- mike_defconfig msm8974-b1-kr.dtb
