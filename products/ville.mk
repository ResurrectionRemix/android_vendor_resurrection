# Specify phone tech before including full_phone
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := ville

# Inherit some common AOKP stuff.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)
$(call inherit-product, vendor/aokp/configs/common_versions.mk)

# Inherit device configuration
$(call inherit-product, device/htc/ville/device_ville.mk)

# Device naming
PRODUCT_DEVICE := ville
PRODUCT_NAME := aokp_ville
PRODUCT_BRAND := htc
PRODUCT_MODEL := HTC One S
PRODUCT_MANUFACTURER := HTC

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_ville BUILD_FINGERPRINT=tmous/ville/ville:4.0.3/IML74K/47441.16:user/release-keys PRIVATE_BUILD_DESC="1.53.401.2 CL47230 release-keys" BUILD_NUMBER=47230

# Copy over prebuilt boot animation
PRODUCT_COPY_FILES +=  \
    vendor/aokp/prebuilt/bootanimation/bootanimation_540_960.zip:system/media/bootanimation.zip
