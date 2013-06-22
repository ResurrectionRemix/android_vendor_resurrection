# Inherit AOSP device configuration for i9300.
$(call inherit-product, device/samsung/i9305/full_i9305.mk)

# Inherit common product files.

$(call inherit-product, vendor/rr/configs/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/rr/configs/gsm.mk)

# Setup device specific product configuration.
PRODUCT_NAME := rr_i9305
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := i9305
PRODUCT_MODEL := GT-I9305
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=m3xx TARGET_DEVICE=m3 BUILD_FINGERPRINT="samsung/m3xx/m3:4.1.2/JZO54K/I9305XXBMA6:user/release-keys" PRIVATE_BUILD_DESC="m3xx-user 4.1.2 JZO54K I9305XXBMA6 release-keys"
PRODUCT_RELEASE_NAME := GT-I9305

PRODUCT_COPY_FILES += \
    vendor/rr/prebuilt/bootanimation/xhdpi/bootanimation.zip:system/media/bootanimation.zip

# ota
PRODUCT_COPY_FILES += \
	vendor/rr/prebuilt/updateme/i9305/update_me.xml:system/update_me.xml
