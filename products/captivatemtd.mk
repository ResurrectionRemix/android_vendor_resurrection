# Inherit AOSP device configuration for crespo.
$(call inherit-product, device/samsung/captivatemtd/full_captivatemtd.mk)

# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# Inherit Aries-common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/aries-common

# Setup device specific product configuration.
PRODUCT_NAME := aokp_captivatemtd
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := captivatemtd
PRODUCT_MODEL := SGH-I897
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-I897 TARGET_DEVICE=SGH-I897 BUILD_FINGERPRINT=samsung/SGH-I897/SGH-I897:2.3.5/GINGERBREAD/UCKK4:user/release-keys PRIVATE_BUILD_DESC="SGH-I897-user 2.3.5 GINGERBREAD UCKK4 release-keys"

PRODUCT_PACKAGES += \
    Thinkfree

PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/bootanimation/bootanimation_480_800.zip:system/media/bootanimation.zip
