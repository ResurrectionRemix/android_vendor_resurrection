$(call inherit-product, device/samsung/galaxytab7c/full_galaxytab7c.mk)

$(call inherit-product, vendor/aokp/configs/common_tablet.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/galaxytab7c

PRODUCT_NAME := aokp_galaxytab7c
PRODUCT_DEVICE := galaxytab7c
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SCH-I800
PRODUCT_RELEASE_NAME := galaxytab7c
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SCH-I800 TARGET_DEVICE=SCH-I800 BUILD_ID=IML74K BUILD_FINGERPRINT=verizon/SCH-I800/SCH-I800:2.3.4/GINGERBREAD/EF01:user/release-keys PRIVATE_BUILD_DESC="SCH-I800-user 2.3.4 GINGERBREAD EF01 release-keys"

PRODUCT_COPY_FILES +=  \
    vendor/aokp/prebuilt/common/media/bootanimation.zip:system/media/bootanimation.zip
