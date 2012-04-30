$(call inherit-product, device/acer/a500/full_a500.mk)

$(call inherit-product, vendor/aokp/configs/common_tablet.mk)

# Inherit common build.prop overrides
-include vendor/aokp/products/common_versions.mk

# Set those variables here to overwrite the inherited values.

PRODUCT_NAME := aokp_a500
PRODUCT_DEVICE := a500
PRODUCT_BRAND := acer
PRODUCT_MANUFACTURER := acer
PRODUCT_MODEL := Acer Iconia A500
PRODUCT_RELEASE_NAME := a500

PRODUCT_COPY_FILES +=  \
    vendor/aokp/prebuilt/common/media/bootanimation.zip:system/media/bootanimation.zip
