# Inherit device configuration.
$(call inherit-product, device/malata/smba1002/full_smba1002.mk)

# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_tablet.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/common_tablet

PRODUCT_NAME := aokp_smba1002
PRODUCT_DEVICE := smba1002
PRODUCT_BRAND := Malata
PRODUCT_MODEL := Malata SMBA1002
PRODUCT_MANUFACTURER := malata
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=tervigon BUILD_ID=IML77 BUILD_FINGERPRINT=motorola/tervigon/wingray:4.0.3/IML77/239789:user/release-keys PRIVATE_BUILD_DESC="tervigon-user 4.0.3 IML77 239789 release-keys" BUILD_NUMBER=239789

PRODUCT_COPY_FILES +=  \
    vendor/aokp/prebuilt/common/media/bootanimation.zip:system/media/bootanimation.zip
