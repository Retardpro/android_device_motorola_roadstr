# ---------------
# Haptics Config
# ---------------

DEVICE_PATH := device/motorola/roadstr

# Flags to force haptics
# (TW_SUPPORT_INPUT_1_2_HAPTICS is the old HIDL vibrator@1.2 path; this device only has an AIDL HAL)
TW_FORCE_VIBRATOR := true
TW_USE_EXTERNAL_VIBRATOR_HAL := true

# AIDL haptics
TW_SUPPORT_INPUT_AIDL_HAPTICS := true
TW_SUPPORT_INPUT_AIDL_HAPTICS_FQNAME := "IVibrator/default"
TW_INCLUDE_LIBRESETVIBRATOR := true

# Load Haptic drivers
TW_LOAD_VENDOR_MODULES := "qti_battery_charger.ko qcom-hv-haptics.ko swr_dlkm.ko swr_haptics_dlkm.ko aw_haptic_hv_v1_5.ko"
TW_LOAD_VENDOR_MODULES_EXCLUDE_GKI := true
