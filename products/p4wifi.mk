# Inherit device configuration for p4wifi.
$(call inherit-product, device/samsung/p4wifi/p4wifi.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/aokp/products/common_full_tablet_wifi.mk)

PRODUCT_PACKAGE_OVERLAYS += device/samsung/p4wifi/overlay

#
# Setup device specific product configuration.
#
PRODUCT_NAME := aokp_p4wifi
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := p4wifi
PRODUCT_MODEL := GT-P7510
PRODUCT_MANUFACTURER := samsung
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-P7510 BUILD_ID=HTJ85B BUILD_FINGERPRINT=samsung/GT-P7510/GT-P7510:3.2/HTJ85B/UEKMM:user/release-keys PRIVATE_BUILD_DESC="GT-P7510-user 3.2 HTJ85B UEKMM release-keys"
TARGET_OTA_ASSERT_SKIP := true

# Inherit common build.prop overrides
-include vendor/aokp/products/common_versions.mk

# Copy maguro specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/aokp/prebuilt/common/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/aokp/proprietary/common/lib/libmicrobes_jni.so:system/lib/libmicrobes_jni.so

# Inherit Face lock security blobs
#-include vendor/aokp/products/common_facelock.mk

# Inherit drm blobs
#-include vendor/aokp/products/common_drm.mk

