$(call inherit-product, device/htc/vivow/full_vivow.mk)

PRODUCT_RELEASE_NAME := Inc2

# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

#PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/vivow

# Setup device specific product configuration.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_vivow BUILD_ID=IML74K BUILD_DISPLAY_ID=GRJ90 BUILD_FINGERPRINT=verizon_wwe/htc_vivow/vivow:2.3.4/GRJ22/120826.3:user/release-keys PRIVATE_BUILD_DESC="4.08.605.3 CL120826 release-keys"

PRODUCT_NAME := aokp_vivow
PRODUCT_DEVICE := vivow


# boot animation
PRODUCT_COPY_FILES += \
	vendor/aokp/prebuilt/common/media/bootanimation.zip:system/media/bootanimation.zip
