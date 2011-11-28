# Inherit AOSP device configuration for emulator.
$(call inherit-product, build/target/product/full.mk)

# Inherit common product files.
$(call inherit-product, vendor/pete/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := pete_emulator
PRODUCT_BRAND := Android
PRODUCT_DEVICE := generic
PRODUCT_MODEL := Emulator
PRODUCT_MANUFACTURER := google

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=emulator BUILD_ID=ITL41D

# Inherit common build.prop overrides
-include vendor/pete/products/common_versions.mk

# Copy emulator specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/pete/proprietary/maguro/media/bootanimation.zip:system/media/bootanimation.zip

