#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/motorola/roadstr


#include twrp config
include $(LOCAL_PATH)/twrp_config.mk

# Inherit from roadstr device
$(call inherit-product, $(DEVICE_PATH)/device.mk)

PRODUCT_DEVICE := roadstr
PRODUCT_NAME := twrp_roadstr
PRODUCT_BRAND := Motorola
PRODUCT_MODEL := motorola edge 70
PRODUCT_MANUFACTURER := Motorola

# Assert
TARGET_OTA_ASSERT_DEVICE := roadstr

# Theme
TW_STATUS_ICONS_ALIGN := center
#TW_Y_OFFSET := 99
#TW_H_OFFSET := -99

# Strongbox Device Decryption
TW_INCLUDE_OMAPI := true

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="roadstr-user 15 VWR35HV-A171-ST3 5cdb7 test-keys"

BUILD_FINGERPRINT := motorola/roadstr/roadstr:15/VWR35HV-A171-ST3/5cdb7:user/release-keys
