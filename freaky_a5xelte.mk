#
# Copyright (C) 2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := device/samsung/a5xelte

# Inherit from those products. Most specific first.
$(call inherit-product, $(LOCAL_PATH)/device.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_l_mr1.mk)

# Inherit common Lineage phone.
$(call inherit-product, vendor/freaky/config/common_full_phone.mk)

# Release tools
#TARGET_RELEASETOOLS_EXTENSIONS := $(LOCAL_PATH)

# Override build user prop
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.user=bunnyy

# Build Type
CUSTOM_BUILD_TYPE := OFFICIAL

# Boot animation resolution
TARGET_BOOT_ANIMATION_RES := 1080

#PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
#    ro.adb.secure=0 \
#    ro.secure=0 \
#    ro.debuggable=1 \
#    persist.logd.logpersistd=logcatd \
#    persist.service.adb.enable=1 \
#    persist.sys.usb.config=adb \
#    ro.logd.size.stats=16M

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := freaky_a5xelte
PRODUCT_DEVICE := a5xelte
PRODUCT_MODEL := SM-A510F
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_GMS_CLIENTID_BASE := android-samsung
