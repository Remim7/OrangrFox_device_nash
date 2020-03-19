#
# Copyright (C) 2019 The OmniRom Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Board device path
LOCAL_PATH := device/sony/suzu

#Bootloader
TARGET_BOOTLOADER_BOARD_NAME := msm8952

# Platform
TARGET_BOARD_PLATFORM := msm8952
TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := false
TARGET_NO_RECOVERY := false
BOARD_FLASH_BLOCK_SIZE := 131072

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

# Second architecture
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53
TARGET_CPU_CORTEX_A53 := true

# 64BIT BINDER
TARGET_USES_64_BIT_BINDER := true

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_DISABLE_INIT_BLANK := true
BACKLIGHT_PATH := /sys/class/leds/lcd-backlight/brightness

# Crypto
TARGET_CRYPTFS_HW_PATH := vendor/qcom/opensource/commonsys/cryptfs_hw
TARGET_HW_DISK_ENCRYPTION := true

# Kernel configurations
BOARD_KERNEL_BASE := 0x20000000
BOARD_KERNEL_TAGS_OFFSET := 0x01E00000
BOARD_RAMDISK_OFFSET := 0x02000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 zram.backend=z3fold androidboot.selinux=permissive
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/Image.gz-dtb

# Kernel properties
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-

# Filesystem
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 7843348480
BOARD_USERDATAIMAGE_PARTITION_SIZE := 22225600512
BOARD_ODMIMAGE_PARTITION_SIZE := 419430400

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USES_MKE2FS := true
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4

# TWRP Configuration
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_CUSTOM_CPU_TEMP_PATH := "/sys/class/thermal/thermal_zone2/temp"
TW_EXCLUDE_SUPERSU := true
TW_EXCLUDE_TWRPAPP := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_INCLUDE_FUSE_EXFAT := true
TW_INCLUDE_FUSE_NTFS := true
TW_INCLUDE_NTFS_3G := true
TW_MAX_BRIGHTNESS := 4095
TW_SCREEN_BLANK_ON_BOOT := true
TWRP_INCLUDE_LOGCAT := true
TW_EXTRA_LANGUAGES := true
TW_USE_TOOLBOX := true
TW_THEME := portrait_hdpi
TARGET_PLATFORM_DEVICE_BASE := /devices/soc.0/
TARGET_RECOVERY_QCOM_RTC_FIX := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery.fstab
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/msm_hsusb/gadget/lun0/file"
BOARD_SUPPRESS_SECURE_ERASE := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
