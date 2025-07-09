#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from PD2230 device
$(call inherit-product, device/vivo/PD2230/device.mk)

PRODUCT_DEVICE := PD2230
PRODUCT_NAME := omni_PD2230
PRODUCT_BRAND := vivo
PRODUCT_MODEL := V2230A
PRODUCT_MANUFACTURER := vivo

PRODUCT_GMS_CLIENTID_BASE := android-vivo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_k6833v1_64_k419-user 12 SP1A.210812.003 compiler07201716 release-keys"

BUILD_FINGERPRINT := vivo/PD2230/PD2230:12/SP1A.210812.003/compiler07201716:user/release-keys
