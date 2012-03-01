# Inherit AOSP device configuration for maguro.
$(call inherit-product, device/samsung/maguro/full_maguro.mk)

# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# Tuna overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/tuna
PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/maguro

# Setup device specific product configuration.
PRODUCT_NAME := aokp_maguro
PRODUCT_BRAND := google
PRODUCT_DEVICE := maguro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=yakju BUILD_ID=ITL41F BUILD_FINGERPRINT=google/yakju/maguro:4.0.1/ITL41F/228551:user/release-keys PRIVATE_BUILD_DESC="yakju-user 4.0.1 ITL41F 228551 release-keys" BUILD_NUMBER=228551

# Copy maguro specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/aokp/prebuilt/tuna/Thinkfree.apk:system/app/Thinkfree.apk \
    vendor/aokp/prebuilt/xhdpi/bootanimation.zip:system/media/bootanimation.zip

