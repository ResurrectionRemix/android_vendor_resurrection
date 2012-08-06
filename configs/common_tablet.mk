# Inherit common tuff
$(call inherit-product, vendor/aokp/configs/common.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/common_tablets

PRODUCT_PACKAGES += \
    Trebuchet

# Inherit drm blobs
-include vendor/aokp/configs/common_drm_tablet.mk
