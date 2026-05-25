# Device configuration for Lenovo IdeaTab Pro Gen 2 (malbec / TB390FU)
# SoC: Qualcomm Snapdragon 8s Gen 4 (SM8735P / sun)

LOCAL_PATH := device/lenovo/malbec

# Dynamic Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Virtual A/B
ENABLE_VIRTUAL_AB := true

$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/launch_with_vendor_ramdisk.mk)

# API level
PRODUCT_SHIPPING_API_LEVEL := 36

# VNDK
PRODUCT_TARGET_VNDK_VERSION := 36

# Fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.1-impl-mock \
    fastbootd

# Recovery modules
PRODUCT_PACKAGES += \
    bootctrl.sun.recovery

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)
