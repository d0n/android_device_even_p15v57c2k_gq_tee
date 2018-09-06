#
# Copyright (C) 2015 The Android Open Kang Project
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

LOCAL_PATH := device/ulefone/t1

# Kernel information
BOARD_KERNEL_PAGESIZE := 2048
BOARD_NAME := 1509953733
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET := 0x40ef8000
BOARD_TAGS_OFFSET := 0x03f88000
BOARD_MKBOOTIMG_ARGS := --cmdline bootopt=64S3,32N2,64N2 --base 0x40078000 --kernel_offset $(BOARD_KERNEL_OFFSET) --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --tags_offset $(BOARD_TAGS_OFFSET) --board $(BOARD_NAME) --pagesize $(BOARD_KERNEL_PAGESIZE)
TARGET_IS_64_BIT := true
MTK_K64_SUPPORT := yes
TARGET_KERNEL_ARCH := arm64

# Kernel properties
#TARGET_KERNEL_SOURCE := kernel/ulefone/t1
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilts/kernel
TARGET_KERNEL_CONFIG := lineage_t1_defconfig
BOARD_KERNEL_IMAGE_NAME := Image.gz
MTK_APPENDED_DTB_SUPPORT := yes

## device overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

## (2) Also get non-open-source specific aspects if available
$(call inherit-product-if-exists, device/ulefone/t1/product/mt6757.mk)
$(call inherit-product-if-exists, vendor/ulefone/t1/t1-vendor.mk)

$(call inherit-product, device/ulefone/mt6757-common/mt6757-common.mk)