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

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=yakju BUILD_FINGERPRINT=google/yakju/maguro:4.0.4/IMM76D/299849:user/release-keys PRIVATE_BUILD_DESC="yakju-user 4.0.4 IMM76D 299849 release-keys" BUILD_NUMBER=299849

# Copy maguro specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/aokp/prebuilt/tuna/Thinkfree.apk:system/app/Thinkfree.apk \
    vendor/aokp/prebuilt/bootanimation/bootanimation_720_1280.zip:system/media/bootanimation.zip \
    vendor/aokp/prebuilt/tuna/vold.fstab:system/etc/vold.fstab

