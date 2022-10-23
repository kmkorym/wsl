#!/bin/bash
source ./env.sh
ROOT_TMP=tmp_root
dd if=/dev/zero of=a9rootfs.ext3 bs=1M count=16
mkfs.ext3 a9rootfs.ext3
mkdir -p $ROOT_TMP
sudo mount -t ext3 a9rootfs.ext3 $ROOT_TMP -o loop
cp -r  busybox/* $ROOT_TMP 
umount $ROOT_TMP
chown -R  uabharuhi a9rootfs.ext3
