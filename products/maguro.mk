# Inherit AOSP device configuration for maguro.
$(call inherit-product, device/samsung/maguro/full_maguro.mk)

# Inherit common product files.
$(call inherit-product, vendor/aokp/products/common.mk)

# Tuna overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/tuna

# Setup device specific product configuration.
PRODUCT_NAME := aokp_maguro
PRODUCT_BRAND := google
PRODUCT_DEVICE := maguro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=yakju BUILD_ID=ITL41F BUILD_FINGERPRINT=google/yakju/maguro:4.0.1/ITL41F/228551:user/release-keys PRIVATE_BUILD_DESC="yakju-user 4.0.1 ITL41F 228551 release-keys" BUILD_NUMBER=228551

# Inherit common build.prop overrides
-include vendor/aokp/products/common_versions.mk

# Copy maguro specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/aokp/proprietary/tuna/app/Thinkfree.apk:system/app/Thinkfree.apk \
    vendor/aokp/proprietary/tuna/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/aokp/proprietary/tuna/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/aokp/proprietary/tuna/media/PFFprec_600.emd:system/media/PFFprec_600.emd \
    vendor/aokp/proprietary/common/app/Microbes.apk:system/app/Microbes.apk \
    vendor/aokp/proprietary/common/etc/permissions/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml \
    vendor/aokp/proprietary/common/etc/permissions/com.google.android.nfc_extras.xml:system/etc/permissions/com.google.android.nfc_extras.xml \
    vendor/aokp/proprietary/common/framework/com.google.android.media.effects.jar:system/framework/com.google.android.media.effects.jar \
    #vendor/aokp/proprietary/common/framework/com.android.nfc_extras.jar:system/framework/com.android.nfc_extras.jar \
    vendor/aokp/proprietary/common/lib/libearthmobile.so:system/lib/libearthmobile.so \
    vendor/aokp/proprietary/common/lib/libmicrobes_jni.so:system/lib/libmicrobes_jni.so

# Inherit Face lock security blobs
-include vendor/aokp/products/common_facelock.mk

# Inherit drm blobs
-include vendor/aokp/products/common_drm.mk

