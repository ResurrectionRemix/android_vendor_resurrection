# Inherit AOSP device configuration for crespo4g.
$(call inherit-product, device/samsung/crespo4g/full_crespo4g.mk)

# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/crespo4g

# Setup device specific product configuration.
PRODUCT_NAME := aokp_crespo4g
PRODUCT_BRAND := google
PRODUCT_DEVICE := crespo4g
PRODUCT_MODEL := Nexus S 4G
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=sojus BUILD_ID=IML74K BUILD_FINGERPRINT=google/sojus/crespo4g:2.3.7/GWK74/185293:user/release-keys PRIVATE_BUILD_DESC="sojus-user 2.3.7 GWK74 185293 release-keys" BUILD_NUMBER=185293

# Copy crespo4g specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/aokp/prebuilt/crespo/Thinkfree.apk:system/app/Thinkfree.apk \
    vendor/aokp/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip

