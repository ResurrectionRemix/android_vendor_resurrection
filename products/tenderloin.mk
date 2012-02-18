$(call inherit-product, device/hp/tenderloin/device_tenderloin.mk)

PRODUCT_RELEASE_NAME := Touchpad

$(call inherit-product, vendor/aokp/configs/common_tablet.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=touchpad BUILD_ID=GWK74 BUILD_FINGERPRINT=google/yakju/maguro:4.0.1/ITL41D/223971:user/release-keys PRIVATE_BUILD_DESC="yakju-user 4.0.1 ITL41D 223971 release-keys" BUILD_NUMBER=189904

PRODUCT_NAME := aokp_tenderloin
PRODUCT_DEVICE := tenderloin
