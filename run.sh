#!/bin/bash
qemu-system-arm -M vexpress-a9 -m 256M -kernel $LINUX_ROOT/arch/arm/boot/zImage -dtb $LINUX_ROOT/arch/arm/boot/dts/vexpress-v2p-ca9.dtb -sd a9rootfs.ext3 -serial mon:stdio -append "root=/dev/mmcblk0 rw console=ttyAMA0"
