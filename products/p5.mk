$(call inherit-product, device/samsung/p5/p5.mk)

# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_tablet.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/p5-common

PRODUCT_NAME := aokp_p5
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := p5
PRODUCT_MODEL := GT-P7300
PRODUCT_MANUFACTURER := samsung
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-P7300 BUILD_ID=IML74K BUILD_FINGERPRINT=samsung/GT-P7300/GT-P7300:3.2/HTJ85B/XWKK4:user/release-keys PRIVATE_BUILD_DESC="GT-P7300-user 3.2 HTJ85B XWKK4 release-keys"

PRODUCT_RELEASE_NAME := p5

PRODUCT_COPY_FILES +=  \
    vendor/aokp/prebuilt/common/media/bootanimation.zip:system/media/bootanimation.zip
