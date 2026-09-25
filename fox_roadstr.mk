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

DEVICE_PATH := device/motorola/roadstr

# Inherit from Asteroids device
$(call inherit-product, $(DEVICE_PATH)/device.mk)

# Include TWRP configurations
$(call inherit-product, $(DEVICE_PATH)/twrp_config.mk)
$(call inherit-product, $(DEVICE_PATH)/fox.mk)


PRODUCT_DEVICE := roadstr
PRODUCT_NAME := fox_roadstr
PRODUCT_BRAND := Motorola
PRODUCT_MODEL := XT2601
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="roadstr_g-user 17 A171WRM-A171-ST3 3d8c7 test-keys"

BUILD_FINGERPRINT := motorola/roadstr_g/msi:17/A171WRM-A171-ST3/3d8c7>
