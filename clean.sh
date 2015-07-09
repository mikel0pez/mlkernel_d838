#!/bin/sh
rm ~/android/kernel/out/*
rm ~/android/kernel/arch/arm/boot/zImage

make clean && make mrproper

