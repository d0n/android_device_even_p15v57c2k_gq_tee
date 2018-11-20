#!/bin/bash

VENDOR=ulefone
DEVICE=t1
OUTDIR=${bdir}/vendor/$VENDOR/$DEVICE
AMAKE=${OUTDIR}/Android.mk
VMAKE=${OUTDIR}/VendorBoardConfig.mk
BMAKE=${OUTDIR}/$DEVICE-vendor-blobs.mk
CMAKE=${OUTDIR}/$DEVICE-vendor.mk


printf "# Copyright (C) 2015 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an \"AS IS\" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file is generated by device/$VENDOR/$DEVICE/setup-makefiles.sh

PRODUCT_COPY_FILES += \\\\\n" >$BMAKE

printf "# Copyright \(C\) 2015 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the \"License\");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an \"AS IS\" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file is generated by device/$VENDOR/$DEVICE/setup-makefiles.sh

\$(call inherit-product, vendor/$VENDOR/$DEVICE/$DEVICE-vendor-blobs.mk)
" >\$CMAKE

printf "# Copyright (C) 2015 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the \"License\");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an \"AS IS\" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file is generated by device/$VENDOR/$DEVICE/setup-makefiles.sh

PRODUCT_PACKAGES += \\\\\n" >$VMAKE

printf "# Copyright (C) 2015 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the \"License\");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an \"AS IS\" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file is generated by device/\$VENDOR/\$DEVICE/setup-makefiles.sh

LOCAL_PATH := \$(call my-dir)
DEVICE_PATH := \$(TOP)/device/$VENDOR/$DEVICE

include \$(CLEAR_VARS)
LOCAL_MODULE := libaudiocustparam
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 32
LOCAL_SRC_FILES_32 := proprietary/vendor/lib/libaudiocustparam.so
include \$(BUILD_PREBUILT)

include \$(CLEAR_VARS)
LOCAL_MODULE := libaudiocustparam
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
LOCAL_SRC_FILES_64 := proprietary/vendor/lib64/libaudiocustparam.so
include \$(BUILD_PREBUILT)

include \$(CLEAR_VARS)
LOCAL_MODULE := libmtkcam_fwkutils
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 32
LOCAL_SRC_FILES_32 := proprietary/vendor/lib/libmtkcam_fwkutils.so
include \$(BUILD_PREBUILT)

include \$(CLEAR_VARS)
LOCAL_MODULE := libmtkcam_fwkutils
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
LOCAL_SRC_FILES_64 := proprietary/vendor/lib64/libmtkcam_fwkutils.so
include \$(BUILD_PREBUILT)

include \$(CLEAR_VARS)
LOCAL_MODULE := libdpframework
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX = .so
LOCAL_MULTILIB := 32
LOCAL_SRC_FILES_32 := proprietary/vendor/lib/libdpframework.so
include \$(BUILD_PREBUILT)

include \$(CLEAR_VARS)
LOCAL_MODULE := libdpframework
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX = .so
LOCAL_MULTILIB := 64
LOCAL_SRC_FILES_64 := proprietary/vendor/lib64/libdpframework.so
include \$(BUILD_PREBUILT)

include \$(CLEAR_VARS)
LOCAL_MODULE := libcam.client
LOCAL_SRC_FILES_64 := proprietary/vendor/lib64/libcam.client.so
LOCAL_SRC_FILES_32 := proprietary/vendor/lib/libcam.client.so
LOCAL_MULTILIB := both
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
include \$(BUILD_PREBUILT)

include \$(CLEAR_VARS)
LOCAL_MODULE := libcameracustom
LOCAL_SRC_FILES_64 := proprietary/vendor/lib64/libcameracustom.so
LOCAL_SRC_FILES_32 := proprietary/vendor/lib/libcameracustom.so
LOCAL_MULTILIB := both
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
include \$(BUILD_PREBUILT)

include \$(CLEAR_VARS)
LOCAL_MODULE := libvcodecdrv
LOCAL_SRC_FILES_64 := proprietary/vendor/lib64/libvcodecdrv.so
LOCAL_SRC_FILES_32 := proprietary/vendor/lib/libvcodecdrv.so
LOCAL_PROPRIETARY_MODULE := true
LOCAL_MULTILIB := both
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
include \$(BUILD_PREBUILT)

include \$(CLEAR_VARS)
LOCAL_MODULE := libnvram
LOCAL_SRC_FILES_64 := proprietary/vendor/lib64/libnvram.so
LOCAL_SRC_FILES_32 := proprietary/vendor/lib/libnvram.so
LOCAL_MULTILIB := both
LOCAL_PROPRIETARY_MODULE := true
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
include \$(BUILD_PREBUILT)

include \$(CLEAR_VARS)
LOCAL_MODULE := libged
LOCAL_SRC_FILES_64 := proprietary/vendor/lib64/libged.so
LOCAL_SRC_FILES_32 := proprietary/vendor/lib/libged.so
LOCAL_PROPRIETARY_MODULE := true
LOCAL_MULTILIB := both
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
include \$(BUILD_PREBUILT)

include \$(CLEAR_VARS)
LOCAL_MODULE = libRSDriver_mtk
LOCAL_MODULE_CLASS = SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX = .so
LOCAL_PROPRIETARY_MODULE = true
LOCAL_MODULE_TAGS = optional
LOCAL_SHARED_LIBRARIES = libc++ libz libutils libRS_internal libbcinfo liblog libEGL libGLESv1_CM libGLESv2 libnativewindow
LOCAL_MULTILIB = both
LOCAL_SRC_FILES_64 = proprietary/vendor/lib64/libRSDriver_mtk.so
LOCAL_SRC_FILES_32 := proprietary/vendor/lib/libRSDriver_mtk.so
include \$(BUILD_PREBUILT)

include \$(CLEAR_VARS)
LOCAL_MODULE := mtk-ril
LOCAL_SRC_FILES_64 := proprietary/vendor/lib64/mtk-ril.so
LOCAL_SRC_FILES_32 := proprietary/vendor/lib/mtk-ril.so
LOCAL_PROPRIETARY_MODULE := true
LOCAL_MULTILIB := both
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
include \$(BUILD_PREBUILT)

include \$(CLEAR_VARS)
LOCAL_MODULE := libmtkplayer
LOCAL_SRC_FILES_64 := proprietary/vendor/lib64/libmtkplayer.so
LOCAL_SRC_FILES_32 := proprietary/vendor/lib/libmtkplayer.so
LOCAL_MULTILIB := both
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
include \$(BUILD_PREBUILT)

include \$(CLEAR_VARS)
LOCAL_MODULE = librilmtk-prop-md1
LOCAL_MODULE_CLASS = STATIC_LIBRARIES
LOCAL_MODULE_SUFFIX = .a
LOCAL_PROPRIETARY_MODULE = true
LOCAL_UNINSTALLABLE_MODULE = true
LOCAL_MULTILIB = 64
LOCAL_SRC_FILES_64 = libril/arm64/librilmtk-prop-md1.a
include \$(BUILD_PREBUILT)

include \$(CLEAR_VARS)
LOCAL_MODULE = librilmtk-prop-md1
LOCAL_MODULE_CLASS = STATIC_LIBRARIES
LOCAL_MODULE_SUFFIX = .a
LOCAL_PROPRIETARY_MODULE = true
LOCAL_UNINSTALLABLE_MODULE = true
LOCAL_MULTILIB = 32
LOCAL_SRC_FILES_32 = libril/arm/librilmtk-prop-md1.a
include \$(BUILD_PREBUILT)

include \$(CLEAR_VARS)
LOCAL_MODULE = rild-prop-md1
LOCAL_MODULE_CLASS = STATIC_LIBRARIES
LOCAL_MODULE_SUFFIX = .a
LOCAL_PROPRIETARY_MODULE = true
LOCAL_UNINSTALLABLE_MODULE = true
LOCAL_MULTILIB = 64
LOCAL_SRC_FILES_64 = rild/arm64/rild-prop-md1.a
include \$(BUILD_PREBUILT)

include \$(CLEAR_VARS)
LOCAL_MODULE = rild-prop-md1
LOCAL_MODULE_CLASS = STATIC_LIBRARIES
LOCAL_MODULE_SUFFIX = .a
LOCAL_PROPRIETARY_MODULE = true
LOCAL_UNINSTALLABLE_MODULE = true
LOCAL_MULTILIB = 32
LOCAL_SRC_FILES_32 = rild/arm/rild-prop-md1.a
include \$(BUILD_PREBUILT)

include \$(CLEAR_VARS)
LOCAL_MODULE = librilmtk-prop-md2
LOCAL_MODULE_CLASS = STATIC_LIBRARIES
LOCAL_MODULE_SUFFIX = .a
LOCAL_PROPRIETARY_MODULE = true
LOCAL_UNINSTALLABLE_MODULE = true
LOCAL_MULTILIB = 64
include \$(BUILD_PREBUILT)

include \$(CLEAR_VARS)
LOCAL_MODULE = librilmtk-prop-md2
LOCAL_MODULE_CLASS = STATIC_LIBRARIES
LOCAL_MODULE_SUFFIX = .a
LOCAL_PROPRIETARY_MODULE = true
LOCAL_UNINSTALLABLE_MODULE = true
LOCAL_MULTILIB = 32
include \$(BUILD_PREBUILT)

include \$(CLEAR_VARS)
LOCAL_MODULE = mtk-ril-prop-md1
LOCAL_MODULE_CLASS = STATIC_LIBRARIES
LOCAL_MODULE_SUFFIX = .a
LOCAL_UNINSTALLABLE_MODULE = true
LOCAL_MODULE_TAGS = optional
LOCAL_MULTILIB = 64
LOCAL_SRC_FILES_64 = mtkril/arm64/mtk-ril-prop-md1.a
include \$(BUILD_PREBUILT)

include \$(CLEAR_VARS)
LOCAL_MODULE = mtk-ril-prop-md1
LOCAL_MODULE_CLASS = STATIC_LIBRARIES
LOCAL_MODULE_SUFFIX = .a
LOCAL_UNINSTALLABLE_MODULE = true
LOCAL_MODULE_TAGS = optional
LOCAL_MULTILIB = 32
LOCAL_SRC_FILES_32 = mtkril/arm/mtk-ril-prop-md1.a
include \$(BUILD_PREBUILT)\n\n" >$AMAKE

./setup-vendor-libs.sh
./setup-vendor-apks.sh
./setup-vendor-blobs.sh

echo "\$(shell mkdir -p \$(OUT)/obj_arm/SHARED_LIBRARIES/libmtk-rilproxy_intermediates \$(OUT)/obj/SHARED_LIBRARIES/libmtk-rilproxy_intermediates \$(OUT)/obj_arm/lib \$(OUT)/obj/lib) #\$(OUT)/obj_arm/SHARED_LIBRARIES/libaudiopolicyservice_intermediates/LINKED \$(OUT)/obj/SHARED_LIBRARIES/libaudiopolicyservice_intermediates/LINKED \$(OUT)/obj/STATIC_LIBRARIES/lib_driver_cmd_mt66xx_intermediates/ \$(OUT_DIR_COMMON_BASE)/d0ndroid/host/linux-x86/obj/SHARED_LIBRARIES/libcurl-host_intermediates \$(OUT_DIR_COMMON_BASE)/d0ndroid/host/linux-x86/obj/lib/ \$(OUT_DIR_COMMON_BASE)/d0ndroid/host/linux-x86/lib64 \$(OUT)/obj/SHARED_LIBRARIES/libhwm_intermediates \$(OUT)/obj_arm/SHARED_LIBRARIES/libhwm_intermediates \$(OUT)/obj_arm/SHARED_LIBRARIES/librilproxy_intermediates \$(OUT)/obj_arm/SHARED_LIBRARIES/librilproxyutils_intermediates \$(OUT)/obj/SHARED_LIBRARIES/librilproxy_intermediates \$(OUT)/obj/SHARED_LIBRARIES/librilproxyutils_intermediates \$(OUT)/obj/STATIC_LIBRARIES/rild-prop-md1_intermediates \$(OUT)/obj/STATIC_LIBRARIES/librilmtk-prop-md1_intermediates \$(OUT)/obj_arm/STATIC_LIBRARIES/mtk-ril-prop-md1_intermediates \$(OUT)/obj_arm/STATIC_LIBRARIES/mtk-ril-prop-md2_intermediates \$(OUT)/obj_arm/STATIC_LIBRARIES/mtk-ril-prop-md2_intermediates \$(OUT)/obj_arm/SHARED_LIBRARIES/librilmtk_intermediates \$(OUT)/obj_arm/SHARED_LIBRARIES/librilmtkmd2_intermediates \$(OUT)/obj_arm/SHARED_LIBRARIES/libmal_intermediates \$(OUT)/obj_arm/SHARED_LIBRARIES/libmdfx_intermediates \$(OUT)/obj/SHARED_LIBRARIES/libmal_intermediates \$(OUT)/obj/SHARED_LIBRARIES/libmdfx_intermediates \$(OUT_DIR_COMMON_BASE)/d0ndroid/host/linux-x86/lib)
\$(shell touch \$(OUT)/obj_arm/SHARED_LIBRARIES/libmtk-rilproxy_intermediates/export_includes \$(OUT)/obj/SHARED_LIBRARIES/libmtk-rilproxy_intermediates/export_includes) #\$(OUT)/obj/STATIC_LIBRARIES/lib_driver_cmd_mt66xx_intermediates/export_includes \$(OUT_DIR_COMMON_BASE)/d0ndroid/host/linux-x86/obj/SHARED_LIBRARIES/libcurl-host_intermediates/export_includes \$(OUT)/obj_arm/SHARED_LIBRARIES/libhwm_intermediates/export_includes \$(OUT)/obj/SHARED_LIBRARIES/libhwm_intermediates/export_includes \$(OUT)/obj_arm/SHARED_LIBRARIES/libhwm_intermediates/export_includes \$(OUT)/obj_arm/SHARED_LIBRARIES/librilproxy_intermediates/export_includes \$(OUT)/obj_arm/SHARED_LIBRARIES/librilproxyutils_intermediates/export_includes \$(OUT)/obj/SHARED_LIBRARIES/librilproxy_intermediates/export_includes \$(OUT)/obj/SHARED_LIBRARIES/librilproxyutils_intermediates/export_includes \$(OUT)/obj/STATIC_LIBRARIES/rild-prop-md1_intermediates/export_includes \$(OUT)/obj/STATIC_LIBRARIES/librilmtk-prop-md1_intermediates/export_includes \$(OUT)/obj_arm/STATIC_LIBRARIES/mtk-ril-prop-md1_intermediates/export_includes \$(OUT)/obj_arm/STATIC_LIBRARIES/mtk-ril-prop-md2_intermediates/export_includes \$(OUT)/obj_arm/STATIC_LIBRARIES/mtk-ril-prop-md2_intermediates/export_includes \$(OUT)/obj_arm/SHARED_LIBRARIES/librilmtk_intermediates/export_includes \$(OUT)/obj_arm/SHARED_LIBRARIES/librilmtkmd2_intermediates/export_includes \$(OUT)/obj_arm/SHARED_LIBRARIES/libmal_intermediates/export_includes \$(OUT)/obj_arm/SHARED_LIBRARIES/libmdfx_intermediates/export_includes \$(OUT)/obj/SHARED_LIBRARIES/libmal_intermediates/export_includes \$(OUT)/obj/SHARED_LIBRARIES/libmdfx_intermediates/export_includes)
#\$(shell cp \$(DEVICE_PATH)/mtk/lib_driver_cmd_mt66xx/arm64/lib_driver_cmd_mt66xx.a \$(OUT)/obj/STATIC_LIBRARIES/lib_driver_cmd_mt66xx_intermediates/lib_driver_cmd_mt66xx.a)
#\$(shell cp -r \$(DEVICE_PATH)/mtk/lib_driver_cmd_mt66xx/ \$(TOP)/NOTICE-TARGET-STATIC_LIBRARIES-lib_driver_cmd_mt66xx)
\$(shell cp \$(LOCAL_PATH)/proprietary/vendor/lib/libmtk-rilproxy.so \$(OUT)/obj_arm/lib/)
\$(shell cp \$(LOCAL_PATH)/proprietary/vendor/lib64/libmtk-rilproxy.so \$(OUT)/obj/lib/)
#\$(shell cp \$(LOCAL_PATH)/proprietary/lib/libaudiopolicymanager.so \$(OUT)/obj_arm/lib/)
#\$(shell cp \$(LOCAL_PATH)/proprietary/lib64/libaudiopolicymanager.so \$(OUT)/obj/lib/)
#\$(shell cp \$(LOCAL_PATH)/proprietary/vendor/lib/libprogrambinary.so \$(OUT)/obj_arm/lib/)
#\$(shell cp \$(LOCAL_PATH)/proprietary/vendor/lib64/libprogrambinary.so \$(OUT)/obj/lib/)
#\$(shell cp /usr/lib/x86_64-linux-gnu/libcurl.so \$(OUT_DIR_COMMON_BASE)/d0ndroid/host/linux-x86/lib/libcurl-host.so)
#\$(shell cp /usr/lib/x86_64-linux-gnu/libcurl.so \$(OUT_DIR_COMMON_BASE)/d0ndroid/host/linux-x86/lib64/libcurl-host.so)
#\$(shell cp /usr/lib/x86_64-linux-gnu/libcurl.so \$(OUT_DIR_COMMON_BASE)/d0ndroid/host/linux-x86/obj/lib/libcurl-host.so)
#\$(shell nm -B -D \$(LOCAL_PATH)/proprietary/vendor/lib/libmdfx.so > \$(OUT)/obj_arm/lib/libmdfx.so.toc)
#\$(shell nm -B -D \$(LOCAL_PATH)/proprietary/vendor/lib64/libmdfx.so > \$(OUT)/obj/lib/libmdfx.so.toc)
#\$(shell nm -B -D \$(LOCAL_PATH)/proprietary/vendor/lib/libmal.so > \$(OUT)/obj_arm/lib/libmal.so.toc)
#\$(shell nm -B -D \$(LOCAL_PATH)/proprietary/vendor/lib64/libmal.so > \$(OUT)/obj/lib/libmal.so.toc)
#\$(shell nm -B -D \$(LOCAL_PATH)/proprietary/vendor/lib/libhwm.so > \$(OUT)/obj_arm/lib/libhwm.so.toc)
#\$(shell nm -B -D \$(LOCAL_PATH)/proprietary/vendor/lib64/libhwm.so > \$(OUT)/obj/lib/libhwm.so.toc)
#\$(shell nm -B -D \$(LOCAL_PATH)/proprietary/vendor/lib/librilmtkmd2.so > \$(OUT)/obj_arm/lib/librilmtkmd2.so.toc)
#\$(shell nm -B -D \$(LOCAL_PATH)/proprietary/vendor/lib64/librilmtkmd2.so > \$(OUT)/obj/lib/librilmtkmd2.so.toc)
#\$(shell nm -B -D \$(LOCAL_PATH)/proprietary/vendor/lib/librilmtk.so > \$(OUT)/obj_arm/lib/librilmtk.so.toc)
#\$(shell nm -B -D \$(LOCAL_PATH)/proprietary/vendor/lib64/librilmtk.so > \$(OUT)/obj/lib/librilmtk.so.toc)
#\$(shell nm -B -D \$(LOCAL_PATH)/proprietary/vendor/lib/librilproxyutils.so > \$(OUT)/obj_arm/lib/librilproxyutils.so.toc)
#\$(shell nm -B -D \$(LOCAL_PATH)/proprietary/vendor/lib64/librilproxyutils.so > \$(OUT)/obj/lib/librilproxyutils.so.toc)
\$(shell nm -B -D \$(LOCAL_PATH)/proprietary/vendor/lib/librilproxy.so > \$(OUT)/obj_arm/lib/librilproxy.so.toc)
\$(shell nm -B -D \$(LOCAL_PATH)/proprietary/vendor/lib64/librilproxy.so > \$(OUT)/obj/lib/librilproxy.so.toc)
#\$(shell nm -B -D \$(LOCAL_PATH)/proprietary/lib/libaudiopolicymanager.so > \$(OUT)/obj_arm/lib/libaudiopolicymanager.so.toc)
#\$(shell nm -B -D \$(LOCAL_PATH)/proprietary/lib64/libaudiopolicymanager.so > \$(OUT)/obj/lib/libaudiopolicymanager.so.toc)
" >>$AMAKE
