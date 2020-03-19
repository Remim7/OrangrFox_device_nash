# OrangeFOX Recovery Device configuration for Sony Xperia X (suzu)

Copyright 2019 - The OmniROM Project

For building OrangeFOX Recovery for Sony Xperia X.

### Kernel Source
Check here: https://github.com/sonyxperiadev/kernel

### OrangeFOX Source
OrangeFOX: https://gitlab.com/OrangeFox/Manifest

### How to build recovery

###-----First,Sync source

mkdir OrangeFox

cd OrangeFox

repo init --depth=1 -u https://gitlab.com/OrangeFox/Manifest.git -b fox_9.0

repo sync -j8 --force-sync

mkdir -p device/sony

cd device/sony

git clone https://github.com/Remim7/OrangeFOX_device_suzu.git -b fox_9.0 nash

###-----Next,Build Recovery

cd OrangeFox

source build/envsetup.sh

export ALLOW_MISSING_DEPENDENCIES=true

export LC_ALL="C"

lunch omni_suzu-eng && mka recoveryimage

### Device specifications
=====================================

Basic   | Spec Sheet
-------:|:-------------------------
CPU     | Hexa-Core (2x1.8 GHz & 4x1.4 GHz)
CHIPSET | Qualcomm MSM8956 Snapdragon 650
GPU     | Adreno 510
Memory  | 3GB
Shipped Android Version | 6.0 (Marshmallow)
Storage | 64GB
Battery | 2620 mAh
Dimensions | 155.8 x 76 x 6.1 mm
Display | 1920 x 1080 pixels/5" LCD
Rear Camera  | 23 MP
Front Camera | 13 MP

# OrangrFox_device_suzu
