# Inherit common Lineage stuff
$(call inherit-product, vendor/rr/config/common.mk)

PRODUCT_SIZE := full

# Recorder
PRODUCT_PACKAGES += \
    Recorder
