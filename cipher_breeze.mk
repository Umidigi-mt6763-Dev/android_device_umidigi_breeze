#
# Copyright (C) 2021-2022 The CipherOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit from Breeze device
$(call inherit-product, device/umidigi/breeze/device.mk)

# Inherit some common CipherOS stuff.
$(call inherit-product, vendor/cipher/config/common_full_phone.mk)

# Boot Animation
TARGET_BOOT_ANIMATION_RES := 1080

# CipherOS
CIPHER_MAINTAINER := Hadenix

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := cipher_breeze
PRODUCT_DEVICE := breeze
PRODUCT_BRAND := umidigi
PRODUCT_MODEL := A5_Pro
PRODUCT_MANUFACTURER := umidigi

PRODUCT_GMS_CLIENTID_BASE := android-agold

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="A5_Pro-user 9 PPR1.180610.011 1616484719 release-keys"

BUILD_FINGERPRINT := UMIDIGI/A5_Pro/A5_Pro:9/PPR1.180610.011/1616484719:user/release-keys
