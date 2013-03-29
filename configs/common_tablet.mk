# Inherit common stuff
$(call inherit-product, vendor/rr/configs/common.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/rr/overlay/common_tablet

