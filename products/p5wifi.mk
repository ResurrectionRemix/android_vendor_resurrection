$(call inherit-product, device/samsung/p5wifi/p5wifi.mk)

# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_tablet.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/p5-common

PRODUCT_NAME := aokp_p5wifi
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := p5wifi
PRODUCT_MODEL := GT-P7310
PRODUCT_MANUFACTURER := samsung
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-P7310 BUILD_FINGERPRINT=samsung/GT-P7310/GT-P7310:3.2/HTJ85B/UEKMM:user/release-keys PRIVATE_BUILD_DESC="GT-P7510-user 3.2 HTJ85B UEKMM release-keys"

PRODUCT_COPY_FILES +=  \
    vendor/aokp/prebuilt/common/media/bootanimation.zip:system/media/bootanimation.zip
