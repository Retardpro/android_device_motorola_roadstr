#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#
DEVICE_PATH := device/motorola/roadstr

# Include TWRP configurations
$(call inherit-product, $(DEVICE_PATH)/fox.mk)


PRODUCT_DEVICE := roadstr
PRODUCT_NAME := twrp_roadstr
PRODUCT_BRAND := Motorola
PRODUCT_MODEL := motorola edge 70
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="roadstr_g-user 17 A171WRM-A171-ST3 3d8c7 test-keys"

BUILD_FINGERPRINT := motorola/roadstr_g/msi:17/A171WRM-A171-ST3/3d8c7
