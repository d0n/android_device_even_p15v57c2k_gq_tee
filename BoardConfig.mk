#
# Copyright (C) 2016 The CyanogenMod Project
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
DEVICE_PATH ?= device/ulefone/t1

include $(DEVICE_PATH)/PlatformConfig.mk
include $(DEVICE_PATH)/ProjectConfig.mk
include $(MTK_PROJECT_CONFIG)
MTK_INTERNAL_CDEFS ?= $(foreach t,$(AUTO_ADD_GLOBAL_DEFINE_BY_NAME),$(if $(filter-out no NO none NONE false FALSE,$($(t))),-D$(t)))
MTK_INTERNAL_CDEFS += $(foreach t,$(AUTO_ADD_GLOBAL_DEFINE_BY_VALUE),$(if $(filter-out no NO none NONE false FALSE,$($(t))),$(foreach v,$(shell echo $($(t)) | tr '[a-z]' '[A-Z]'),-D$(v))))
MTK_INTERNAL_CDEFS += $(foreach t,$(AUTO_ADD_GLOBAL_DEFINE_BY_NAME_VALUE),$(if $(filter-out no NO none NONE false FALSE,$($(t))),-D$(t)=\"$($(t))\"))
BOARD_GLOBAL_CFLAGS += $(MTK_INTERNAL_CDEFS)
BOARD_GLOBAL_CPPFLAGS += $(MTK_INTERNAL_CDEFS)
BOARD_GLOBAL_CPPFLAGS += -DMTK_HARDWARE
BOARD_GLOBAL_CFLAGS += \
  -DMTK_HARDWARE \
  -DNO_SECURE_DISCARD \
  -DDISABLE_HW_ID_MATCH_CHECK \
  -DDISABLE_ASHMEM_TRACKING

PRODUCT_GMS_CLIENTID_BASE ?= android-agold
MTK_HARDWARE ?= true
BACKLIGHT_PATH ?= /sys/class/leds/lcd-backlight/brightness
WITH_SU ?= true
BOARD_EGL_NEEDS_FNW ?= true
BOARD_EGL_NEEDS_HANDLE_VALUE ?= true
BOARD_VENDOR ?= MediaTek
BOARD_GPS_LIBRARIES ?= true
BOARD_MEDIATEK_USES_GPS ?= true
BOARD_USES_CYANOGEN_HARDWARE ?= true
BLOCK_BASED_OTA ?= false
BOARD_PROVIDES_RILD ?= true
BOARD_HAS_FLIPPED_SCREEN := true
#BOARD_HARDWARE_CLASS += $(DEVICE_PATH)/cmhw
BOARD_USES_MTK_AUDIO ?= true
#BOARD_RIL_CLASS ?= ../../../device/ulefone/t1/ril
BOARD_CONNECTIVITY_VENDOR ?= MediaTek
BOARD_CONNECTIVITY_MODULE ?= conn_soc
BOARD_HAS_MTK_HARDWARE ?= true
BOARD_USES_MTK_HARDWARE ?= true
MTK_HARDWARE ?= true
BOARD_USES_METADATA_PARTITION ?= true
MTK_MMPROFILE_SUPPORT ?= true
USE_LEGACY_AUDIO_POLICY ?= 1
USE_XML_AUDIO_POLICY_CONF ?= 1
PRODUCT_TAGS += dalvik.gc.type-precise
WITH_DEXPREOPT_PIC ?= true
USE_MINIKIN ?= true
MALLOC_SVELTE ?= true
CONFIG_NR_CPUS ?= 8
MTK_HARDWARE ?= true
SIM_COUNT ?= 2
USE_LIBC_SYSTEM_PROPERTIES ?= false
TARGET_USE_CUSTOM_LUN_FILE_PATH ?= /sys/devices/soc/11270000.usb3/musb-hdrc/gadget/lun%d/file
TARGET_BOOTANIMATION_PRELOAD ?= true
TARGET_BOOTANIMATION_TEXTURE_CACHE ?= true
TARGET_REQUIRES_SYNCHRONOUS_SETSURFACE ?= true
TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS ?= true
TARGET_PROVIDES_LIBLIGHT ?= true
TARGET_INCLUDE_PBBUILDER_SYMBOLS ?= true
TARGET_INCLUDE_VTMAL_SYMBOLS ?= true
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK ?= true
TARGET_INCLUDE_FINGERPRINT_SYMBOLS ?= true
TARGET_PROVIDES_INIT_RC ?= true
TARGET_OTA_ASSERT_DEVICE ?= t1,p15v57c2k_gq_tee,,
TARGET_KMODULES ?= true
TARGET_SYSTEM_PROP ?= $(DEVICE_PATH)/system.prop
#TARGET_RECOVERY_INITRC := $(DEVICE_PATH)/recovery/init.recovery.mt6757.rc
#TARGET_USES_OVERLAY ?= true

# MTK audio
BOARD_USES_MTK_AUDIO ?= true

# Bluetooth
MTK_BT_SUPPORT ?= yes
BOARD_HAVE_BLUETOOTH_MTK ?= true
BOARD_BLUETOOTH_DOES_NOT_USE_RFKILL ?= true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR ?= $(DEVICE_PATH)/bluetooth
BOARD_CONNECTIVITY_MODULE ?= conn_soc

# Camera
USE_CAMERA_STUB ?= true

# Display
NUM_FRAMEBUFFER_SURFACE_BUFFERS ?= 3
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS ?= true
MAX_VIRTUAL_DISPLAY_DIMENSION ?= 1
PRESENT_TIME_OFFSET_FROM_VSYNC_NS ?= 0
USE_OPENGL_RENDERER ?= true
MTK_HWC_SUPPORT ?= yes
MTK_HWC_VERSION ?= 1.4.1

# Partitions informations
BOARD_BOOTIMAGE_PARTITION_SIZE ?= 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE ?= 25165824
BOARD_CACHEIMAGE_PARTITION_SIZE ?= 452984832
BOARD_SYSTEMIMAGE_PARTITION_SIZE ?= 3758096384
BOARD_USERDATAIMAGE_PARTITION_SIZE ?= 58065927680
BOARD_FLASH_BLOCK_SIZE ?= 131072
BOARD_HAS_LARGE_FILESYSTEM ?= true

# Partitions types
TARGET_USE_MKE2FS_FORMAT ?= true
TARGET_USERIMAGES_USE_EXT4 ?= true
TARGET_USERIMAGES_USE_F2FS ?= true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE ?= ext4

# GPS
BOARD_GPS_LIBRARIES ?= true
BOARD_MEDIATEK_USES_GPS ?= true

# Kernel
BOARD_KERNEL_CMDLINE ?= bootopt=64S3,32N2,64N2 androidboot.selinux=permissive
#BOARD_KERNEL_CMDLINE ?= bootopt=64S3,32N2,64N2 androidboot.selinux=enforcing
#BOARD_KERNEL_CMDLINE ?= bootopt=64S3,32N2,64N2
BOARD_KERNEL_PAGESIZE ?= 2048
BOARD_NAME ?= 1509953733
BOARD_KERNEL_BASE ?= 0x40078000
BOARD_KERNEL_OFFSET ?= 0x00008000
BOARD_RAMDISK_OFFSET ?= 0x04f88000
BOARD_TAGS_OFFSET ?= 0x03f88000
BOARD_MKBOOTIMG_ARGS ?= --cmdline "$(BOARD_KERNEL_CMDLINE)" --kernel_offset $(BOARD_KERNEL_OFFSET) --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --tags_offset $(BOARD_TAGS_OFFSET) --board $(BOARD_NAME)
TARGET_KERNEL_ARCH ?= arm64
TARGET_KERNEL_SOURCE ?= #kernel/ulefone/t1
TARGET_KERNEL_HEADER_ARCH ?= arm64
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel
#TARGET_KERNEL_DTB_APPEND ?= $(DEVICE_PATH)/prebuilts/dtb
TARGET_KERNEL_CONFIG ?= lineage_d0nkern_defconfig
TARGET_USES_64_BIT_BINDER ?= true
TARGET_KERNEL_ARCH ?= arm64
BOARD_KERNEL_IMAGE_NAME ?= Image.gz
TARGET_KERNEL_CROSS_COMPILE_PREFIX ?= aarch64-linux-android-

TARGET_NO_BOOTLOADER ?= true
BOARD_CHARGER_SHOW_PERCENTAGE ?= true

# Recovery
RECOVERY_VARIANT ?= twrp
#BOARD_BUILD_SYSTEM_ROOT_IMAGE ?= true
BOARD_USES_FULL_RECOVERY_IMAGE ?= true
#BOARD_USES_RECOVERY_AS_BOOT ?= true
TW_DEFAULT_EXTERNAL_STORAGE ?= true
TARGET_RECOVERY_PIXEL_FORMAT ?= RGBA_8888
BOARD_HAS_NO_SELECT_BUTTON ?= true
TARGET_RECOVERY_FSTAB ?= $(DEVICE_PATH)/recovery/etc/recovery.fstab
DEVICE_RESOLUTION ?= 1080x1920
DEVICE_SCREEN_WIDTH ?= 1080
DEVICE_SCREEN_HEIGHT ?= 1920
RECOVERY_SDCARD_ON_DATA ?= true
TW_INTERNAL_STORAGE_PATH ?= /data/media
TW_INTERNAL_STORAGE_MOUNT_POINT ?= data
TW_EXTERNAL_STORAGE_PATH ?= /external_sd
TW_EXTERNAL_STORAGE_MOUNT_POINT ?= external_sd
TARGET_USE_CUSTOM_LUN_FILE_PATH ?= /sys/devices/platform/11270000.usb3/musb-hdrc/gadget/lun0/file
TARGET_RECOVERY_LCD_BACKLIGHT_PATH ?= /sys/class/leds/lcd-backlight/brightness
TW_CUSTOM_CPU_TEMP_PATH ?= /sys/devices/virtual/thermal/thermal_zone1/temp
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID ?= true
RECOVERY_GRAPHICS_USE_LINELENGTH ?= true
BOARD_SUPPRESS_SECURE_ERASE ?= true
TW_INCLUDE_CRYPTO ?= true
TW_MAX_BRIGHTNESS ?= 255
TW_DEFAULT_BRIGHTNESS ?= 80
TW_BRIGHTNESS_PATH ?= /sys/class/leds/lcd-backlight/brightness
TW_NO_USB_STORAGE ?= true
BOARD_USE_FRAMEBUFFER_ALPHA_CHANNEL ?= true
TARGET_DISABLE_TRIPLE_BUFFERING ?= false
TW_FLASH_FROM_STORAGE ?= true
TW_NEW_ION_HEAP ?= true
TWHAVE_SELINUX ?= true

WPA_SUPPLICANT_VERSION ?= VER_0_8_X
BOARD_HOSTAPD_DRIVER ?= NL80211
BOARD_HOSTAPD_PRIVATE_LIB ?= lib_driver_cmd_mt66xx
BOARD_WPA_SUPPLICANT_DRIVER ?= NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB ?= lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM ?= /dev/wmtWifi
WIFI_DRIVER_FW_PATH_STA ?= STA
WIFI_DRIVER_FW_PATH_AP ?= AP
WIFI_DRIVER_FW_PATH_P2P ?= P2P

PRODUCT_PROPERTY_OVERRIDES ?= $(shell cat $(DEVICE_PATH)/sprp.lst)

PRODUCT_DEFAULT_PROPERTY_OVERRIDES ?= $(shell cat $(DEVICE_PATH)/sprp.lst)

PRODUCT_SYSTEM_DEFAULT_PROPERTIES ?= $(shell cat $(DEVICE_PATH)/sprp.lst)
