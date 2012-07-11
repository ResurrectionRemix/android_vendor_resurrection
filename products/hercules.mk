# Inherit AOSP device configuration for pyramid.
$(call inherit-product, device/samsung/hercules/full_hercules.mk)

# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# skyrocket overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/hercules

# Setup device specific product configuration.
PRODUCT_NAME := aokp_hercules
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := hercules
PRODUCT_MODEL := SGH-T989
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=samsung_hercules BUILD_FINGERPRINT="samsung/SGH-T989/SGH-T989:4.0.3/IML74K/UVLE1:user/release-keys" PRIVATE_BUILD_DESC="SGH-T989-user 4.0.3 IML74K UVLE1 release-keys"

# Camera
PRODUCT_PACKAGES += \
    Camera

# boot animation
PRODUCT_COPY_FILES += \
	vendor/aokp/prebuilt/bootanimation/bootanimation_480_800.zip:system/media/bootanimation.zip

