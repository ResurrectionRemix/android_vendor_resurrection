# Inherit common CM stuff
$(call inherit-product, vendor/cm/config/common_mini.mk)

# Required CM packages
PRODUCT_PACKAGES += \
    LatinIME

# Copy Magisk zip
PRODUCT_COPY_FILES += \
    vendor/cm/prebuilt/common/magisk.zip:system/addon.d/magisk.zip

ifeq ($(TARGET_SCREEN_WIDTH) $(TARGET_SCREEN_HEIGHT),$(space))
    PRODUCT_COPY_FILES += \
        vendor/cm/prebuilt/common/bootanimation/800.zip:system/media/bootanimation.zip
endif
