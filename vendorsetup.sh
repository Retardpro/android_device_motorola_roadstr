export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache
ccache -M 50G

lunch twrp_roadstr-bp2a-eng

# ./device/motorola/roadstr/roadstr.sh
