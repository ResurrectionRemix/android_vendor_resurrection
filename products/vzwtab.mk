$(call inherit-product, device/samsung/vzwtab/full_vzwtab.mk)

$(call inherit-product, vendor/aokp/configs/common_tablet.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/vzwtab

PRODUCT_NAME := aokp_vzwtab
PRODUCT_DEVICE := vzwtab
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SCH-I800
PRODUCT_RELEASE_NAME := VZWTab
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SCH-I800 TARGET_DEVICE=SCH-I800 BUILD_ID=GINGERBREAD BUILD_FINGERPRINT=verizon/SCH-I800/SCH-I800:2.3.4/GINGERBREAD/EF01:user/release-keys PRIVATE_BUILD_DESC="SCH-I800-user 2.3.4 GINGERBREAD EF01 release-keys"

PRODUCT_COPY_FILES +=  \
    vendor/aokp/prebuilt/common/media/bootanimation.zip:system/media/bootanimation.zip
