# Specify phone tech before including full_phone
$(call inherit-product, vendor/aokp/configs/gsm.mk)

$(call inherit-product, vendor/aokp/configs/common.mk)

# Inherit device configuration
$(call inherit-product, device/htc/m7att/full_m7att.mk)

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=m7 BUILD_ID=JZO54K BUILD_FINGERPRINT="cingular_us/m7/m7:4.1.2/JZO54K/166754.12:user/release-keys" PRIVATE_BUILD_DESC="1.26.502.12 CL166754 release-keys"

PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/bootanimation/bootanimation_1080_1920.zip:system/media/bootanimation-alt.zip

# Device naming
PRODUCT_DEVICE := m7att
PRODUCT_NAME := aokp_m7att
PRODUCT_BRAND := htc
PRODUCT_MODEL := HTC One
PRODUCT_MANUFACTURER := HTC
