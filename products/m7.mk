# Specify phone tech before including full_phone

$(call inherit-product, vendor/rr/configs/gsm.mk)


# Release name
PRODUCT_RELEASE_NAME := m7


$(call inherit-product, vendor/rr/configs/common.mk)


# Inherit device configuration
$(call inherit-product, device/htc/m7/device_m7.mk)

# Device naming
PRODUCT_DEVICE := m7
PRODUCT_NAME := rr_m7
PRODUCT_BRAND := htc
PRODUCT_MODEL := HTC One
PRODUCT_MANUFACTURER := HTC


# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_m7 BUILD_ID=JZO54K BUILD_FINGERPRINT="htc/m7/m7:4.1.2/JZO54K/166937.7:user/release-keys" PRIVATE_BUILD_DESC="1.29.651.7 CL166937 release-keys"


# temp call audio fix
# source: https://github.com/romanbb/m7_call_audio_hack
PRODUCT_PACKAGES += \
    MSevenTempCallFix

PRODUCT_COPY_FILES += \
    vendor/rr/prebuilt/bootanimation/1080_1920/bootanimation.zip:system/media/bootanimation.zip

# ota
PRODUCT_COPY_FILES += \
	vendor/rr/prebuilt/updateme/m7/update_me.xml:system/update_me.xml
