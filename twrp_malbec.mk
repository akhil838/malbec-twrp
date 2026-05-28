#
# Copyright (C) 2026 akhil838 (https://github.com/akhil838)
# SPDX-License-Identifier: GPL-3.0-or-later
#

# Inherit from common AOSP config
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)

# Inherit from TWRP common
$(call inherit-product, vendor/twrp/config/common.mk)

# Device identifier
PRODUCT_DEVICE := malbec
PRODUCT_NAME := twrp_malbec
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := TB390FU
PRODUCT_MANUFACTURER := Lenovo

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

# Bypass 16K page alignment check for prebuilt binaries (magiskboot)
PRODUCT_CHECK_PREBUILT_MAX_PAGE_SIZE := false
