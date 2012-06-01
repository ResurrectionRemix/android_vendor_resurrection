# Inherit device configuration for tf201.
$(call inherit-product, device/asus/tf201/full_tf201.mk)

# Inherit some common AOKP stuff.
$(call inherit-product, vendor/aokp/configs/common_tablet.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/tf201

#
# Setup device specific product configuration.
#
PRODUCT_NAME := aokp_tf201
PRODUCT_DEVICE := tf201
PRODUCT_BRAND := asus
PRODUCT_BOARD := EeePad
PRODUCT_MODEL := Transformer Prime TF201
PRODUCT_MANUFACTURER := asus
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=US_epad BUILD_FINGERPRINT=asus/US_epad/EeePad:4.0.3/IML74K/US_epad-9.4.2.21-20120323:user/release-keys PRIVATE_BUILD_DESC="US_epad-user 4.0.3 IML74K US_epad-9.4.2.21-20120323 release-keys"

PRODUCT_COPY_FILES +=  \
    vendor/aokp/prebuilt/bootanimation/bootanimation_1280_800.zip:system/media/bootanimation.zip
