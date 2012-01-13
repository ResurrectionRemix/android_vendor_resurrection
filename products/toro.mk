# Inherit AOSP device configuration for toro.
$(call inherit-product, device/samsung/toro/full_toro.mk)

# Inherit common product files.
$(call inherit-product, vendor/aokp/products/common.mk)

# Tuna overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/tuna

# Setup device specific product configuration.
PRODUCT_NAME := aokp_toro
PRODUCT_BRAND := google
PRODUCT_DEVICE := toro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=mysid BUILD_ID=ICL53F BUILD_FINGERPRINT=google/mysid/toro:4.0.2/ICL53F/235179:user/release-keys PRIVATE_BUILD_DESC="mysid-user 4.0.2 ICL53F 235179 release-keys" BUILD_NUMBER=235179

# Inherit common build.prop overrides
-include vendor/aokp/products/common_versions.mk

# Copy toro specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/aokp/proprietary/tuna/app/Thinkfree.apk:system/app/Thinkfree.apk \
    vendor/aokp/proprietary/tuna/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/aokp/proprietary/tuna/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/aokp/proprietary/tuna/media/PFFprec_600.emd:system/media/PFFprec_600.emd \
    vendor/aokp/proprietary/common/app/Microbes.apk:system/app/Microbes.apk \
    vendor/aokp/proprietary/common/etc/permissions/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml \
    vendor/aokp/proprietary/common/framework/com.google.android.media.effects.jar:system/framework/com.google.android.media.effects.jar \
    vendor/aokp/proprietary/common/lib/libearthmobile.so:system/lib/libearthmobile.so \
    vendor/aokp/proprietary/common/lib/libmicrobes_jni.so:system/lib/libmicrobes_jni.so

# Inherit Face lock security blobs
#-include vendor/aokp/products/common_facelock.mk

# Inherit drm blobs
-include vendor/aokp/products/common_drm.mk


