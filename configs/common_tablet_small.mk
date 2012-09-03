# Inherit common tuff
$(call inherit-product, vendor/aokp/configs/common.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/common_tablets_small

PRODUCT_PACKAGES += \
    NovaLauncher

# Inherit drm blobs
-include vendor/aokp/configs/common_drm_tablet.mk

# BT config
PRODUCT_COPY_FILES += \
    system/bluetooth/data/main.nonsmartphone.conf:system/etc/bluetooth/main.conf
