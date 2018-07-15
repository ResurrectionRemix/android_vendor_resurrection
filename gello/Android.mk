#
# Copyright (C) 2016 The CyanogenMod Project
#           (C) 2017 The LineageOS Project
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
LOCAL_PATH := $(call my-dir)

SOURCE_GELLO_PATH := $(LOCAL_PATH)/../../../external/gello-build

include $(CLEAR_VARS)

LOCAL_MODULE := Gello
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := $(DEFAULT_SYSTEM_DEV_CERTIFICATE)

LOCAL_OVERRIDES_PACKAGES := Browser

ifeq ($(WITH_GELLO_SOURCE),true)
# Build from source
ifeq ($(LOCAL_GELLO),true)
BUILD_GELLO := $(info $(shell bash $(SOURCE_GELLO_PATH)/gello_build.sh --local 1>&2))
else
BUILD_GELLO := $(info $(shell bash $(SOURCE_GELLO_PATH)/gello_build.sh 1>&2))
endif
LOCAL_SRC_FILES := ../../../external/gello-build/Gello.apk
include $(BUILD_PREBUILT)
else
LOCAL_DEX_PREOPT := false
LOCAL_MODULE_TAGS := optional
LOCAL_BUILT_MODULE_STEM := package.apk
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)

LOCAL_HTTP_FILE_VERSION := 40
LOCAL_HTTP_PATH := https://github.com/LineageOS/android_packages_apps_Gello/releases/download/$(LOCAL_HTTP_FILE_VERSION)
LOCAL_HTTP_FILENAME := gello.apk
LOCAL_HTTP_MD5SUM := $(LOCAL_HTTP_FILENAME).md5sum

include $(BUILD_HTTP_PREBUILT)
endif
