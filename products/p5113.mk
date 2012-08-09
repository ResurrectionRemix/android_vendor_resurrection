#
# Copyright (C) 2012 The CyanogenMod Project
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

## Specify phone tech before including full_phone
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := p5113

PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/bootanimation/bootanimation_1280_800.zip:system/media/bootanimation.zip

PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/espressowifi

PRODUCT_PACKAGES += \
    NovaLauncher

# Inherit some common CM stuff.
$(call inherit-product, vendor/aokp/configs/common_tablet.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/p5113/full_p5113.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := p5113
PRODUCT_NAME := aokp_p5113
PRODUCT_BRAND := samsung
PRODUCT_MODEL := GT-P5113
PRODUCT_MANUFACTURER := samsung

#Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=espresso10wifibby TARGET_DEVICE=espresso10wifi BUILD_FINGERPRINT=samsung/espresso10wifibby/espresso10wifi:4.0.3/IML74K/P5113UEALD7:user/release-keys PRIVATE_BUILD_DESC="espresso10wifibby-user 4.0.3 IML74K P5113UEALD7 release-keys"
