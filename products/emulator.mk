# Inherit AOSP device configuration for emulator.
$(call inherit-product, build/target/product/sdk.mk)

# Inherit common product files.
$(call inherit-product, vendor/pete/products/common.mk)

# Inherit audio package from Tuna
$(call inherit-product, frameworks/base/data/sounds/AudioPackage7.mk)

# Setup device specific product configuration.
PRODUCT_NAME := pete_emulator
PRODUCT_BRAND := Android
PRODUCT_DEVICE := generic
PRODUCT_MODEL := Emulator
PRODUCT_MANUFACTURER := google

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=emulator BUILD_ID=ICL53F

# Inherit common build.prop overrides
-include vendor/pete/products/common_versions.mk

# Copy emulator specific prebuilt files
PRODUCT_COPY_FILES +=  \
    development/tools/emulator/opengl/system/egl/egl.cfg:system/lib/egl/egl.cfg

