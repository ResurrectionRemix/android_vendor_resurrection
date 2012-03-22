# Inherit AOSP device configuration for inc.
$(call inherit-product, device/htc/bravo/bravo.mk)

# Inherit some common aokp stuff.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := aokp_bravo
PRODUCT_BRAND := htc
PRODUCT_DEVICE := bravo
PRODUCT_MODEL := Desire
PRODUCT_MANUFACTURER := HTC

PRODUCT_PACKAGES += \
    Camera

PRODUCT_COPY_FILES += \
	vendor/aokp/prebuilt/common/media/bootanimation.zip:system/media/bootanimation.zip
