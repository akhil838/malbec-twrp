#
# Copyright (C) 2026 akhil838 (https://github.com/akhil838)
# SPDX-License-Identifier: GPL-3.0-or-later
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),malbec)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif
