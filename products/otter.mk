$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

$(call inherit-product, device/amazon/otter/device.mk)
$(call inherit-product, vendor/aokp/configs/common_tablet.mk)
$(call inherit-product-if-exists, vendor/amazon/otter/otter-vendor.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := aokp_otter
PRODUCT_DEVICE := otter
PRODUCT_BRAND := Android
PRODUCT_MODEL := Amazon Kindle Fire
PRODUCT_MANUFACTURER := Amazon
PRODUCT_RELEASE_NAME := KFire

# boot animation
PRODUCT_COPY_FILES += \
	vendor/aokp/prebuilt/common/media/bootanimation.zip:system/media/bootanimation.zip
