#!/bin/bash
KERNELNAME="OmniDONK-"$1
CURRENTDATE=$(date +"%d%m")
OUT_DIR="/home/nando/dev/OUT"
ZIMAGE="/home/nando/dev/kernel_opo_omni/arch/arm/boot/zImage"
KERNEL_DIR="/home/nando/dev/kernel_opo_omni"

cd akopo
echo "Cleaning previous zImage"
rm zImage
echo "Pull new zImage from build"
cp $ZIMAGE /home/nando/dev/akopo
echo "Zip everything and output to /OUT"
zip -r ../$KERNELNAME-$CURRENTDATE.zip *
mv ../$KERNELNAME-$CURRENTDATE.zip $OUT_DIR
cd ..
echo "Finished"
