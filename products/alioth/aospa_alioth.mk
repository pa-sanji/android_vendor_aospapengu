#
# SPDX-FileCopyrightText: Paranoid Android
# SPDX-License-Identifier: Apache-2.0
#

ifeq (aospa_alioth, $(TARGET_PRODUCT))

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from the custom device configuration.
$(call inherit-product, device/xiaomi/alioth/device.mk)

# Background blur. envsetup.mk parses product_config.mk before board_config.mk,
# so TARGET_USES_BLUR from BoardConfig.mk is not visible while aospa-target.mk
# is evaluated. Publish it in the product context first, otherwise the
# ro.custom.blur.enable / ro.surface_flinger.supports_background_blur product
# properties are never emitted and WindowManager keeps window blur disabled.
TARGET_USES_BLUR := true

# Inherit from the AOSPA configuration.
$(call inherit-product, vendor/aospa/target/product/aospa-target.mk)

PRODUCT_NAME := aospa_alioth
PRODUCT_BRAND := POCO
PRODUCT_DEVICE := alioth
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := M2012K11AG

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Boot animation resolution.
TARGET_BOOT_ANIMATION_RES := 1080

endif
