#!/bin/bash

export ARCH=arm
export CROSS_COMPILE=/home/raheel/Desktop/Toolchain/Sabermod4.8/bin/arm-eabi-
mkdir output
#make -C $(pwd) O=output msm8916_sec_defconfig VARIANT_DEFCONFIG=msm8916_sec_j5nlte_eur_defconfig SELINUX_DEFCONFIG=selinux_defconfig#
make -C $(pwd) O=output msm8916_sec_defconfig VARIANT_DEFCONFIG=msm8916_sec_j53g_eur_defconfig SELINUX_DEFCONFIG=selinux_defconfig
make -j64 -C $(pwd) O=output

cp output/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage
