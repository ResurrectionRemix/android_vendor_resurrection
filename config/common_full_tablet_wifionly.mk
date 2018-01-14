# Inherit full common Lineage stuff
$(call inherit-product, vendor/rr/config/common_full.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

# Include Lineage LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/rr/overlay/dictionaries
