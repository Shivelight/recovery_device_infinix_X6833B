#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Enable project quotas and casefolding for emulated storage without sdcardfs
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from X6833B device
$(call inherit-product, device/infinix/X6833B/device.mk)

PRODUCT_DEVICE := X6833B
PRODUCT_NAME := twrp_X6833B
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix X6833B
PRODUCT_MANUFACTURER := infinix

PRODUCT_GMS_CLIENTID_BASE := android-infinix

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vext_x6833b_h894-user 12 SP1A.210812.016 376418 release-keys"

BUILD_FINGERPRINT := Infinix/X6833B-GL/Infinix-X6833B:12/SP1A.210812.016/230711V1696:user/release-keys
