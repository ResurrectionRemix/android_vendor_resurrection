$(call inherit-product, device/samsung/captivatemtd/full_captivatemtd.mk)

# Release name
PRODUCT_RELEASE_NAME := captivate

$(call inherit-product, vendor/aokp/configs/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/aries-common

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := captivatemtd
PRODUCT_NAME := aokp_captivatemtd
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SGH-I897

#Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-I897 TARGET_DEVICE=SGH-I897 BUILD_ID=IML74K BUILD_FINGERPRINT=google/soju/crespo:2.3.4/GRJ22/121341:user/release-keys PRIVATE_BUILD_DESC="soju-user 2.3.4 GRJ22 121341 release-keys"

# boot animation
PRODUCT_COPY_FILES += \
	vendor/aokp/prebuilt/common/media/bootanimation.zip:system/media/bootanimation.zip
