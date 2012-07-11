# Inherit AOSP device configuration for pyramid.
$(call inherit-product, device/htc/pyramid/device_pyramid.mk)

# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# pyramid overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/pyramid

# Setup device specific product configuration.
PRODUCT_NAME := aokp_pyramid
PRODUCT_BRAND := HTC
PRODUCT_DEVICE := pyramid
PRODUCT_MODEL := Sensation
PRODUCT_MANUFACTURER := HTC

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_pyramid BUILD_FINGERPRINT=htc_europe/htc_pyramid/pyramid:4.0.3/IML74K/309896.3:user/release-keys PRIVATE_BUILD_DESC="3.32.401.3 CL309896 release-keys"

# Camera
PRODUCT_PACKAGES += \
    Camera

# boot animation
PRODUCT_COPY_FILES += \
	vendor/aokp/prebuilt/bootanimation/bootanimation_540_960.zip:system/media/bootanimation.zip

