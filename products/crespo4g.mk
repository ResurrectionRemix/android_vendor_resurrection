# Inherit AOSP device configuration for crespo4g.
$(call inherit-product, device/samsung/crespo4g/full_crespo4g.mk)

# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/crespo4g

# Setup device specific product configuration.
PRODUCT_NAME := aokp_crespo4g
PRODUCT_BRAND := google
PRODUCT_DEVICE := crespo4g
PRODUCT_MODEL := Nexus S 4G
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=soju BUILD_FINGERPRINT="google/soju/crespo:4.1.1/JRO03R/113740:user/release-keys" PRIVATE_BUILD_DESC="soju-user 4.1.1 JRO03R 113740 release-keys"

# Crespo4G specific packages
PRODUCT_PACKAGES += \
    Thinkfree

PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/bootanimation/bootanimation_480_800.zip:system/media/bootanimation.zip
