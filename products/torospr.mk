# Inherit AOSP device configuration for toroplus.
$(call inherit-product, device/samsung/torospr/full_torospr.mk)

# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

# Setup device specific product configuration.
PRODUCT_NAME := aokp_torospr
PRODUCT_BRAND := Google
PRODUCT_DEVICE := torospr
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=mysidspr BUILD_FINGERPRINT=samsung/mysidspr/toroplus:4.0.4/IMM76I/330937:user/release-keys PRIVATE_BUILD_DESC="mysidspr-user 4.0.4 IMM76I 330937 release-keys" BUILD_NUMBER=330937

PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/tuna/vold.fstab:system/etc/vold.fstab

# Torospr specific packages
PRODUCT_PACKAGES += \
    bootanimation_720_1280 \
    Thinkfree
