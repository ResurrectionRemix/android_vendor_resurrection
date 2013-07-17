# Specify phone tech before including full_phone
$(call inherit-product, vendor/rr/configs/gsm.mk)

$(call inherit-product, vendor/rr/configs/common.mk)

# Inherit device configuration
$(call inherit-product, device/htc/m7ul/full_m7ul.mk)

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=m7 BUILD_ID=JZO54K BUILD_FINGERPRINT="htc_europe/m7/m7:4.1.2/JZO54K/177101.12:user/release-keys" PRIVATE_BUILD_DESC="1.29.401.12 CL177101 release-keys"

PRODUCT_COPY_FILES += \
    vendor/rr/prebuilt/bootanimation/1080_1920/bootanimation.zip:system/media/bootanimation.zip

# ota
PRODUCT_COPY_FILES += \
	vendor/rr/prebuilt/updateme/m7/update_me.xml:system/update_me.xml

# Device naming
PRODUCT_DEVICE := m7ul
PRODUCT_NAME := rr_m7ul
PRODUCT_BRAND := htc
PRODUCT_MODEL := HTC One
PRODUCT_MANUFACTURER := HTC
