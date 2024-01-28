# Copyright (C) 2023 Paranoid Android
# SPDX-License-Identifier: Apache-2.0

# Check for target product
ifeq (aospa_liber, $(TARGET_PRODUCT))

# Inherit from framework first
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from liber device configuration
$(call inherit-product, device/motorola/liber/device.mk)

# Inherit from common AOSPA configuration
$(call inherit-product, vendor/aospa/target/product/aospa-target.mk)

# Device identifier
PRODUCT_NAME := aospa_liber
PRODUCT_DEVICE := liber
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola one fusion+
PRODUCT_MANUFACTURER := motorola
PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=liber

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

endif
