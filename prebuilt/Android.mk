# Copyright (C) 2012 The Android Open Source Project
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

LOCAL_PATH := $(call my-dir)


#
# Prebuilt APKs
#
include $(CLEAR_VARS)
LOCAL_MODULE := LatinImeDictionaryPack
LOCAL_MODULE_OWNER := aokp
LOCAL_SRC_FILES := common/app/$(LOCAL_MODULE).apk
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .apk
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := PRESIGNED
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := Microbes
LOCAL_MODULE_OWNER := aokp
LOCAL_SRC_FILES := common/app/$(LOCAL_MODULE).apk
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .apk
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := PRESIGNED
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := NovaLauncher
LOCAL_MODULE_OWNER := aokp
LOCAL_SRC_FILES := common/app/$(LOCAL_MODULE).apk
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .apk
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := PRESIGNED
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := SuperSU
LOCAL_MODULE_OWNER := aokp
LOCAL_SRC_FILES := common/app/$(LOCAL_MODULE).apk
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .apk
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := PRESIGNED
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := Thinkfree
LOCAL_MODULE_OWNER := aokp
LOCAL_SRC_FILES := common/app/$(LOCAL_MODULE).apk
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .apk
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := PRESIGNED
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := UnicornPorn
LOCAL_MODULE_OWNER := aokp
LOCAL_SRC_FILES := common/app/$(LOCAL_MODULE).apk
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .apk
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := PRESIGNED
include $(BUILD_PREBUILT)

#
# Boot animations
#
include $(CLEAR_VARS)
LOCAL_MODULE := bootanimation_240_320
LOCAL_MODULE_OWNER := aokp
LOCAL_SRC_FILES := bootanimation/$(LOCAL_MODULE).zip
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .zip
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/media
LOCAL_MODULE_NAME := bootanimation.zip
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := bootanimation_320_480
LOCAL_MODULE_OWNER := aokp
LOCAL_SRC_FILES := bootanimation/$(LOCAL_MODULE).zip
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .zip
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/media
LOCAL_MODULE_NAME := bootanimation.zip
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := bootanimation_480_800
LOCAL_MODULE_OWNER := aokp
LOCAL_SRC_FILES := bootanimation/$(LOCAL_MODULE).zip
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .zip
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/media
LOCAL_MODULE_NAME := bootanimation.zip
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := bootanimation_480_854
LOCAL_MODULE_OWNER := aokp
LOCAL_SRC_FILES := bootanimation/$(LOCAL_MODULE).zip
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .zip
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/media
LOCAL_MODULE_NAME := bootanimation.zip
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := bootanimation_540_960
LOCAL_MODULE_OWNER := aokp
LOCAL_SRC_FILES := bootanimation/$(LOCAL_MODULE).zip
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .zip
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/media
LOCAL_MODULE_NAME := bootanimation.zip
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := bootanimation_600_1024
LOCAL_MODULE_OWNER := aokp
LOCAL_SRC_FILES := bootanimation/$(LOCAL_MODULE).zip
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .zip
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/media
LOCAL_MODULE_NAME := bootanimation.zip
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := bootanimation_720_1280
LOCAL_MODULE_OWNER := aokp
LOCAL_SRC_FILES := bootanimation/$(LOCAL_MODULE).zip
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .zip
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/media
LOCAL_MODULE_NAME := bootanimation.zip
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := bootanimation_1024_600
LOCAL_MODULE_OWNER := aokp
LOCAL_SRC_FILES := bootanimation/$(LOCAL_MODULE).zip
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .zip
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/media
LOCAL_MODULE_NAME := bootanimation.zip
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := bootanimation_1024_768
LOCAL_MODULE_OWNER := aokp
LOCAL_SRC_FILES := bootanimation/$(LOCAL_MODULE).zip
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .zip
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/media
LOCAL_MODULE_NAME := bootanimation.zip
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := bootanimation_1280_800
LOCAL_MODULE_OWNER := aokp
LOCAL_SRC_FILES := bootanimation/$(LOCAL_MODULE).zip
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .zip
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/media
LOCAL_MODULE_NAME := bootanimation.zip
include $(BUILD_PREBUILT)
