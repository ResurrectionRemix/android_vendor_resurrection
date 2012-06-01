# Inherit AOSP device configuration for toroplus.
$(call inherit-product, device/samsung/toroplus/full_toroplus.mk)

# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

# Tuna overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/tuna
PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/toro

# Setup device specific product configuration.
PRODUCT_NAME := aokp_toroplus
PRODUCT_BRAND := Google
PRODUCT_DEVICE := toroplus
PRODUCT_MODEL := Sprint Galaxy Nexus CDMA
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=mysidspr BUILD_FINGERPRINT=samsung/mysidspr/toroplus:4.0.4/IMM76I/330937:user/release-keys PRIVATE_BUILD_DESC="mysidspr-user 4.0.4 IMM76I 330937 release-keys" BUILD_NUMBER=330937

# Copy toroplus specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/aokp/prebuilt/tuna/Thinkfree.apk:system/app/Thinkfree.apk \
    vendor/aokp/prebuilt/bootanimation/bootanimation_720_1280.zip:system/media/bootanimation.zip \
    vendor/aokp/prebuilt/tuna/vold.fstab:system/etc/vold.fstab


