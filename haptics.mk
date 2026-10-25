# ---------------
# Haptics Config
# ---------------

DEVICE_PATH := device/motorola/roadstr

# Flags to force haptics
TW_SUPPORT_INPUT_1_2_HAPTICS := false

# Haptic
FIXED_HAPTICS := true

ifeq ($(FIXED_HAPTICS),true)
   TW_SUPPORT_INPUT_AIDL_HAPTICS := true
   TW_SUPPORT_INPUT_AIDL_HAPTICS_FQNAME := "IVibrator/default"
#  TW_SUPPORT_INPUT_AIDL_HAPTICS_FIX_OFF := true
else
   TW_NO_HAPTICS := true
endif

# Load Haptic drivers
TW_LOAD_VENDOR_MODULES := "qti_battery_charger.ko awinic_sar.ko aw882xx_dlkm.ko qcom-hv-haptics.ko swr_dlkm.ko swr_haptic_dlkm.ko aw_haptic_hv_v1_5.ko"
TW_LOAD_VENDOR_MODULES_EXCLUDE_GKI := true
