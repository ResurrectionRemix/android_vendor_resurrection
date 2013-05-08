# Inherit AOSP device configuration for odin
$(call inherit-product-if-exists, device/sony/odin/full_odin.mk)

# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# hayabusa overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/odin

# Setup device specific product configuration.
PRODUCT_NAME := aokp_odin
PRODUCT_BRAND := Sony
PRODUCT_DEVICE := odin
PRODUCT_MODEL := C6503
PRODUCT_MANUFACTURER := Sony

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=C6503_1271-0336 BUILD_FINGERPRINT=Sony/C6503_1271-0336/C6503:4.1.2/10.1.A.1.434/Tfp_rw:user/release-keys PRIVATE_BUILD_DESC="C6503-user 4.1.2 10.1.A.1.434 Tfp_rw test-keys"

#skip asserts for now
TARGET_OTA_ASSERT_SKIP := true

PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/bootanimation/bootanimation_720_1280.zip:system/media/bootanimation-alt.zip
