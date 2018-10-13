#!/bin/bash

VENDOR=ulefone
DEVICE=t1
OUTDIR=${bdir}/vendor/$VENDOR/$DEVICE
AMAKE=${OUTDIR}/Android.mk
VMAKE=${OUTDIR}/VendorBoardConfig.mk
BMAKE=${OUTDIR}/$DEVICE-vendor-blobs.mk
CMAKE=${OUTDIR}/$DEVICE-vendor.mk


echo "# Copyright (C) 2015 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file is generated by device/$VENDOR/$DEVICE/setup-makefiles.sh

PRODUCT_COPY_FILES += \\" >$BMAKE

echo "# Copyright \(C\) 2015 The CyanogenMod Project
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

\$(call inherit-product, vendor/$VENDOR/$DEVICE/$DEVICE-vendor-blobs.mk)
" >$CMAKE

echo "# Copyright (C) 2015 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file is generated by device/$VENDOR/$DEVICE/setup-makefiles.sh

PRODUCT_PACKAGES += \\" >$VMAKE

echo "# Copyright (C) 2015 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file is generated by device/$VENDOR/$DEVICE/setup-makefiles.sh

LOCAL_PATH := \$(call my-dir)
DEVICE_PATH := \$(TOP)/device/$VENDOR/$DEVICE
#\$(shell mkdir -p \$(OUT)/obj/STATIC_LIBRARIES/lib_driver_cmd_mt66xx_intermediates/ \$(TOP)/NOTICE-TARGET-STATIC_LIBRARIES-lib_driver_cmd_mt66xx)
#\$(shell touch \$(OUT)/obj/STATIC_LIBRARIES/lib_driver_cmd_mt66xx_intermediates/export_includes)
#\$(shell cp \$(TOP)/device/ulefone/t1/mtk/libwifi-hal-mt66xx/arm/libwifi-hal-mt66xx.a \$(OUT)/obj/STATIC_LIBRARIES/lib_driver_cmd_mt66xx_intermediates/lib_driver_cmd_mt66xx.a)
#\$(shell mkdir -p \$(OUT)/obj_arm/SHARED_LIBRARIES/libaudiopolicymanager_intermediates/)
#\$(shell touch \$(OUT)/obj_arm/SHARED_LIBRARIES/libaudiopolicymanager_intermediates/export_includes)

include \$(CLEAR_VARS)
LOCAL_MODULE_CLASS := ETC
LOCAL_PROPRIETARY_MODULE := true
LOCAL_MODULE := egl
LOCAL_MODULE_PATH := system/vendor/lib/egl
LOCAL_SRC_FILES := proprietary/vendor/lib/egl/egl.cfg
LOCAL_MODULE_SUFFIX := .cfg
include \$(BUILD_PREBUILT)

include \$(CLEAR_VARS)
LOCAL_PROPRIETARY_MODULE := true
LOCAL_ALLOW_UNDEFINED_SYMBOLS := true
LOCAL_SRC_FILES := vtmal/libmtk_vtmal.cpp
LOCAL_SHARED_LIBRARIES := libbinder libutils libvtmal
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE := libmtk_vtmal
include \$(BUILD_SHARED_LIBRARY)
" >$AMAKE

./setup-vendor-libs.sh
./setup-vendor-apks.sh
./setup-vendor-blobs.sh
