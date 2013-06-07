$(call inherit-product, device/samsung/jfltetmo/full_jfltetmo.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/rr/configs/gsm.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/rr/configs/common.mk)
$(call inherit-product, vendor/rr/configs/common_versions.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=jfltetmo TARGET_DEVICE=jfltetmo BUILD_FINGERPRINT="samsung/jfltetmo/jfltetmo:4.2.2/JDQ39/M919UVUAMDB:user/release-keys" PRIVATE_BUILD_DESC="jfltetmo-user 4.2.2 JDQ39 M919UVUAMDB release-keys"

PRODUCT_NAME := rr_jfltetmo
PRODUCT_DEVICE := jfltetmo

#bootanimation
PRODUCT_COPY_FILES += \
    vendor/rr/prebuilt/bootanimation/xhdpi/bootanimation.zip:system/media/bootanimation.zip

# ota
PRODUCT_COPY_FILES += \
	vendor/rr/prebuilt/updateme/jfltetmo/update_me.xml:system/update_me.xml
