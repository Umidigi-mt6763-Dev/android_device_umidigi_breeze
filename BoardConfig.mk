#
# Copyright (C) 2021-2022 The CipherOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/umidigi/breeze
BOARD_VENDOR := umidigi

# Inherit from mt6763-common
-include device/umidigi/mt6763-common/BoardConfigCommon.mk

# Assertions
TARGET_OTA_ASSERT_DEVICE := A5_Pro,breeze

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := A5_Pro

# Kernel
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 androidboot.selinux=permissive
BOARD_KERNEL_CMDLINE += androidboot.init_fatal_reboot_target=recovery
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_TAGS_OFFSET := 0x13f88000
BOARD_RAMDISK_OFFSET := 0x14f88000
BOARD_DTB_OFFSET := 0x13f88000
BOARD_HASH_TYPE := sha1
BOARD_BOOT_HEADER_VERSION := 1
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb

BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_INCLUDE_RECOVERY_DTBO := true

BOARD_PREBUILT_DTBIMAGE_DIR := $(DEVICE_PATH)/prebuilt/dtb
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image.gz-dtb

TARGET_FORCE_PREBUILT_KERNEL := true
TARGET_KERNEL_SOURCE := kernel/mediatek/alps-4.4
TARGET_KERNEL_CONFIG := k63v2_64_bsp_defconfig

BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOT_HEADER_VERSION)
BOARD_MKBOOTIMG_ARGS += --dtb_offset $(BOARD_DTB_OFFSET)

# Partitions
BOARD_USERDATAIMAGE_PARTITION_SIZE := 3221225472
BOARD_VENDORIMAGE_PARTITION_SIZE := 687865856