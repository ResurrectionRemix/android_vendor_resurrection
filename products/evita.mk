# Specify phone tech before including full_phone
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := evita

TARGET_BOOTANIMATION_NAME := vertical-720x1280

# Inherit some common CM stuff.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

# Inherit device configuration
$(call inherit-product, device/htc/evita/device.mk)

# Device naming
PRODUCT_DEVICE := evita
PRODUCT_NAME := aokp_evita
PRODUCT_BRAND := htc
PRODUCT_MODEL := One X
PRODUCT_MANUFACTURER := HTC

# Set build fingerprint / ID / Product Name etc.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_evita BUILD_FINGERPRINT=cingular_us/evita/evita:4.1.1/JRO03H/54373.1:user/test-keys PRIVATE_BUILD_DESC="1.85.502.1 CL54373 test-keys" BUILD_NUMBER=47741

PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/bootanimation/bootanimation_720_1280.zip:system/media/bootanimation.zip 
