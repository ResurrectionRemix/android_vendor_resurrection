# Inherit AOSP device configuration for crespo4g.
$(call inherit-product, device/samsung/crespo4g/full_crespo4g.mk)

# Inherit common product files.
$(call inherit-product, vendor/aokp/products/common.mk)

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/crespo4g

# Setup device specific product configuration.
PRODUCT_NAME := aokp_crespo4g
PRODUCT_BRAND := google
PRODUCT_DEVICE := crespo4g
PRODUCT_MODEL := Nexus S 4G
PRODUCT_MANUFACTURER := samsung
TARGET_OTA_ASSERT_DEVICE := $(PRODUCT_DEVICE)

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=sojus BUILD_ID=GWK74 BUILD_FINGERPRINT=google/sojus/crespo4g:2.3.7/GWK74/185293:user/release-keys PRIVATE_BUILD_DESC="sojus-user 2.3.7 GWK74 185293 release-keys" BUILD_NUMBER=185293

# Inherit common build.prop overrides
-include vendor/aokp/products/common_versions.mk

# Copy crespo4g specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/aokp/proprietary/crespo/app/Thinkfree.apk:system/app/Thinkfree.apk \
    vendor/aokp/proprietary/crespo/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/aokp/proprietary/crespo/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/aokp/proprietary/crespo/media/PFFprec_600.emd:system/media/PFFprec_600.emd \
    vendor/aokp/proprietary/tuna/media/audio/notifications/Nexus.mp3:system/media/audio/notifications/Nexus.mp3 \
    vendor/aokp/proprietary/common/app/Microbes.apk:system/app/Microbes.apk \
    vendor/aokp/proprietary/common/etc/permissions/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml \
    vendor/aokp/proprietary/common/framework/com.google.android.media.effects.jar:system/framework/com.google.android.media.effects.jar \
    vendor/aokp/proprietary/common/lib/libearthmobile.so:system/lib/libearthmobile.so \
    vendor/aokp/proprietary/common/lib/libmicrobes_jni.so:system/lib/libmicrobes_jni.so \
    vendor/aokp/proprietary/common/lib/libshopperimageutils-3.so:system/lib/libshopperimageutils-3.so \
    vendor/aokp/proprietary/common/lib/libshoppervorbisencoder-2.so:system/lib/libshoppervorbisencoder-2.so \
    vendor/aokp/proprietary/common/lib/libshopperzxingutils-4.so:system/lib/libshopperzxingutils-4.so

# Inherit Face lock security blobs
#-include vendor/aokp/products/common_facelock.mk

# Inherit drm blobs
#-include vendor/aokp/products/common_drm.mk

