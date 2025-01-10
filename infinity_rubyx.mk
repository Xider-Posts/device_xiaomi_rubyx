#
# SPDX-FileCopyrightText: 2023-2024 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/xiaomi/rubyx/device.mk)

# Inherit some common InfinityX stuff.
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

PRODUCT_NAME := infinity_rubyx
PRODUCT_DEVICE := rubyx
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := ruby

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="ruby-user 14 UP1A.230620.001 V816.0.13.0.UMOMIXM release-keys" \
    BuildFingerprint=Redmi/ruby_global/ruby:14/UP1A.230620.001/V816.0.13.0.UMOMIXM:user/release-keys \
    SystemName=ruby_global \
    SystemDevice=ruby

# ProjectInfinityX specific
INFINITY_BUILD_TYPE := OFFICIAL
INFINITY_MAINTAINER := postcumer
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_BOOT_ANIMATION_RES := 1440
TARGET_SUPPORTS_BLUR := true
TARGET_HAS_UDFPS := false
TARGET_SHIPS_FULL_GAPPS := false
TARGET_BUILD_GOOGLE_TELEPHONY := true
USE_MOTO_CALCULATOR := true
WITH_GAPPS := true
