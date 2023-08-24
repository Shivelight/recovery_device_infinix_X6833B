#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from Infinix-X6833B device
$(call inherit-product, device/infinix/Infinix-X6833B/device.mk)

PRODUCT_DEVICE := Infinix-X6833B
PRODUCT_NAME := omni_Infinix-X6833B
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix X6833B
PRODUCT_MANUFACTURER := infinix

PRODUCT_GMS_CLIENTID_BASE := android-infinix

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vext_x6833b_h894-user 12 SP1A.210812.016 376418 release-keys"

BUILD_FINGERPRINT := Infinix/X6833B-GL/Infinix-X6833B:12/SP1A.210812.016/230711V1696:user/release-keys
