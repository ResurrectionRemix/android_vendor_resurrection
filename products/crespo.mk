# Inherit AOSP device configuration for crespo.
$(call inherit-product, device/samsung/crespo/full_crespo.mk)

# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/crespo

# Setup device specific product configuration.
PRODUCT_NAME := aokp_crespo
PRODUCT_BRAND := google
PRODUCT_DEVICE := crespo
PRODUCT_MODEL := Nexus S
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=soju BUILD_FINGERPRINT="google/soju/crespo:4.1.1/JRO03L/113740:user/release-keys" PRIVATE_BUILD_DESC="soju-user 4.1.1 JRO03L 113740 release-keys"

PRODUCT_PACKAGES += \
    Thinkfree

PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/bootanimation/bootanimation_480_800.zip:system/media/bootanimation.zip
