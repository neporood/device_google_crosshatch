#
# Copyright (C) 2022 The Crooked Android Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common stuff.
$(call inherit-product, vendor/crooked/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/google/crosshatch/aosp_blueline.mk)

include device/google/crosshatch/blueline/device-crooked.mk

# Device identifier. This must come after all inclusions
PRODUCT_NAME := crooked_blueline
PRODUCT_MODEL := Pixel 3
PRODUCT_BRAND := google

# Boot animation
TARGET_SCREEN_HEIGHT := 2160
TARGET_SCREEN_WIDTH := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=blueline \
    PRIVATE_BUILD_DESC="blueline-user 12 SP1A.210812.016.C1 8029091 release-keys"

BUILD_FINGERPRINT := google/blueline/blueline:12/SP1A.210812.016.C1/8029091:user/release-keys
