#
# Copyright (C) 2021-2022 The CipherOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Get non-open-source specific aspects
$(call inherit-product, vendor/umidigi/breeze/breeze-vendor.mk)

# Inherit from mt6763-common
$(call inherit-product, device/umidigi/mt6763-common/mt6763-common.mk)