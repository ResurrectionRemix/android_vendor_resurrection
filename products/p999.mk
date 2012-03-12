# Inherit AOSP device configuration for p999.
$(call inherit-product, device/lge/p999/p999.mk)

# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# p999 overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/star-common

# Build GanOptimizer
PRODUCT_PACKAGES += GanOptimizer

# Setup device specific product configuration.
PRODUCT_NAME := aokp_p999
PRODUCT_BRAND := lge
PRODUCT_DEVICE := p999
PRODUCT_MODEL := LG-P999
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=lge_lge_star BUILD_ID=GRI40 BUILD_FINGERPRINT=lge/lge_lge_star/p999:2.3.3/GRI40/lgp999-V21e.41fdc8a2:user/release-keys PRIVATE_BUILD_DESC="lge_star-user 2.3.3 GRI40 41fdc8a2 release-keys"

# boot animation
PRODUCT_COPY_FILES += \
	vendor/aokp/prebuilt/common/media/bootanimation.zip:system/media/bootanimation.zip

