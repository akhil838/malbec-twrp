#
# Copyright (C) 2026 akhil838 (https://github.com/akhil838)
# SPDX-License-Identifier: GPL-3.0-or-later
#
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

# Vendor kernel modules baked into recovery ramdisk (touch, USB, display)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/root/vendor/lib/modules/altmode-glink.ko:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/modules/altmode-glink.ko \
    $(LOCAL_PATH)/recovery/root/vendor/lib/modules/drm_display_helper.ko:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/modules/drm_display_helper.ko \
    $(LOCAL_PATH)/recovery/root/vendor/lib/modules/drm_dp_aux_bus.ko:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/modules/drm_dp_aux_bus.ko \
    $(LOCAL_PATH)/recovery/root/vendor/lib/modules/dwc3-msm.ko:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/modules/dwc3-msm.ko \
    $(LOCAL_PATH)/recovery/root/vendor/lib/modules/fsa4480-i2c.ko:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/modules/fsa4480-i2c.ko \
    $(LOCAL_PATH)/recovery/root/vendor/lib/modules/glink_probe.ko:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/modules/glink_probe.ko \
    $(LOCAL_PATH)/recovery/root/vendor/lib/modules/leds-qpnp-vibrator-ldo.ko:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/modules/leds-qpnp-vibrator-ldo.ko \
    $(LOCAL_PATH)/recovery/root/vendor/lib/modules/msm_drm.ko:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/modules/msm_drm.ko \
    $(LOCAL_PATH)/recovery/root/vendor/lib/modules/msm_ext_display.ko:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/modules/msm_ext_display.ko \
    $(LOCAL_PATH)/recovery/root/vendor/lib/modules/nvt_touch.ko:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/modules/nvt_touch.ko \
    $(LOCAL_PATH)/recovery/root/vendor/lib/modules/panel_event_notifier.ko:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/modules/panel_event_notifier.ko \
    $(LOCAL_PATH)/recovery/root/vendor/lib/modules/pdr_interface.ko:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/modules/pdr_interface.ko \
    $(LOCAL_PATH)/recovery/root/vendor/lib/modules/phy-msm-m31-eusb2.ko:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/modules/phy-msm-m31-eusb2.ko \
    $(LOCAL_PATH)/recovery/root/vendor/lib/modules/phy-msm-snps-eusb2.ko:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/modules/phy-msm-snps-eusb2.ko \
    $(LOCAL_PATH)/recovery/root/vendor/lib/modules/phy-msm-ssusb-qmp.ko:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/modules/phy-msm-ssusb-qmp.ko \
    $(LOCAL_PATH)/recovery/root/vendor/lib/modules/ps5169.ko:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/modules/ps5169.ko \
    $(LOCAL_PATH)/recovery/root/vendor/lib/modules/qcom_glink.ko:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/modules/qcom_glink.ko \
    $(LOCAL_PATH)/recovery/root/vendor/lib/modules/qcom_glink_smem.ko:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/modules/qcom_glink_smem.ko \
    $(LOCAL_PATH)/recovery/root/vendor/lib/modules/qcom_smd.ko:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/modules/qcom_smd.ko \
    $(LOCAL_PATH)/recovery/root/vendor/lib/modules/qcom-hv-haptics.ko:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/modules/qcom-hv-haptics.ko \
    $(LOCAL_PATH)/recovery/root/vendor/lib/modules/qmi_helpers.ko:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/modules/qmi_helpers.ko \
    $(LOCAL_PATH)/recovery/root/vendor/lib/modules/qti_pmic_glink.ko:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/modules/qti_pmic_glink.ko \
    $(LOCAL_PATH)/recovery/root/vendor/lib/modules/redriver.ko:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/modules/redriver.ko \
    $(LOCAL_PATH)/recovery/root/vendor/lib/modules/repeater.ko:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/modules/repeater.ko \
    $(LOCAL_PATH)/recovery/root/vendor/lib/modules/repeater-qti-pmic-eusb2.ko:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/modules/repeater-qti-pmic-eusb2.ko \
    $(LOCAL_PATH)/recovery/root/vendor/lib/modules/rproc_qcom_common.ko:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/modules/rproc_qcom_common.ko \
    $(LOCAL_PATH)/recovery/root/vendor/lib/modules/smem.ko:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/modules/smem.ko \
    $(LOCAL_PATH)/recovery/root/vendor/lib/modules/smp2p.ko:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/modules/smp2p.ko \
    $(LOCAL_PATH)/recovery/root/vendor/lib/modules/sync_fence.ko:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/modules/sync_fence.ko \
    $(LOCAL_PATH)/recovery/root/vendor/lib/modules/tinno_kallsyms.ko:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/modules/tinno_kallsyms.ko \
    $(LOCAL_PATH)/recovery/root/vendor/lib/modules/ucsi_qti_glink.ko:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/modules/ucsi_qti_glink.ko \
    $(LOCAL_PATH)/recovery/root/vendor/lib/modules/usb_f_ccid.ko:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/modules/usb_f_ccid.ko \
    $(LOCAL_PATH)/recovery/root/vendor/lib/modules/usb_f_cdev.ko:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/modules/usb_f_cdev.ko \
    $(LOCAL_PATH)/recovery/root/vendor/lib/modules/usb_f_gsi.ko:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/modules/usb_f_gsi.ko \
    $(LOCAL_PATH)/recovery/root/vendor/lib/modules/usb_f_rndis.ko:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/modules/usb_f_rndis.ko \
    $(LOCAL_PATH)/recovery/root/vendor/lib/modules/wcd_usbss_i2c.ko:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/modules/wcd_usbss_i2c.ko

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)
