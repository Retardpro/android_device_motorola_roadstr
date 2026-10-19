#!/sbin/sh

# Haptics configuration, made by me, altough no one asked

HAPTIC_BUNDLE="/vendor/firmware/haptic"
SYS_HAPTIC="/sys/class/qcom-haptics"

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:${HAPTIC_BUNDLE}

if [ -f "${HAPTIC_BUNDLE}/qcom-hv-haptics.ko" ]; then
    insmod ${HAPTIC_BUNDLE}/qcom-hv-haptics.ko
fi

sleep 0.1

if [ -f "${HAPTIC_BUNDLE}/hapticdrv.ko" ]; then
    insmod ${HAPTIC_BUNDLE}/hapticdrv.ko
fi

sleep 0.1

if [ -d "${SYS_HAPTIC}" ]; then
    [ -f "${HAPTIC_BUNDLE}/haptic_ram.bin" ] && echo 1 > ${SYS_HAPTIC}/config_trigger

    [ -f "${HAPTIC_BUNDLE}/100_Haptic.bin" ] && echo 100 > ${SYS_HAPTIC}/firmware_select
    [ -f "${HAPTIC_BUNDLE}/101_Haptic.bin" ] && echo 101 > ${SYS_HAPTIC}/firmware_select
fi

while true; do
    if [ -d "/sys/class/leds/vibrator" ]; then
        chmod 0666 /sys/class/leds/vibrator/activate
    fi
done
