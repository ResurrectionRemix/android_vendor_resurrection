# Inherit full common Lineage stuff
$(call inherit-product, vendor/rr/config/common_full.mk)

PRODUCT_PACKAGES += TvSettings

DEVICE_PACKAGE_OVERLAYS += vendor/lineage/overlay/tv
