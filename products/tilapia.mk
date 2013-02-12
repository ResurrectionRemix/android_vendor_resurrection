# Inherit AOSP device configuration for grouper
$(call inherit-product, device/asus/tilapia/full_tilapia.mk)

# Inherit AOKP common_tablet bits
$(call inherit-product, vendor/aokp/configs/common_tablet.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# Grouper Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/grouper

# Setup device specific product configuration.
PRODUCT_NAME := aokp_tilapia
PRODUCT_BRAND := google
PRODUCT_DEVICE := tilapia
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := asus

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=nakasig BUILD_FINGERPRINT="google/nakasig/tilapia:4.2.1/JOP40D/533553:user/release-keys" PRIVATE_BUILD_DESC="nakasig-user 4.2.1 JOP40D 533553 release-keys"

PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/bootanimation/bootanimation_1280_800.zip:system/media/bootanimation.zip

PRODUCT_PACKAGES += \
    Mms
