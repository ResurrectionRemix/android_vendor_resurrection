$(call inherit-product, vendor/aokp/configs/common.mk)

PRODUCT_PACKAGES += \
    NovaLauncher

# Inherit drm blobs
-include vendor/aokp/configs/common_drm_phone.mk

