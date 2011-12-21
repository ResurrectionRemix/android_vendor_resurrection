# Inherit AOSP device configuration for toro.
$(call inherit-product, device/samsung/toro/full_toro.mk)

# Inherit common product files.
$(call inherit-product, vendor/pete/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := pete_toro
PRODUCT_BRAND := google
PRODUCT_DEVICE := toro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=mysid BUILD_ID=ICL53F BUILD_FINGERPRINT=google/mysid/toro:4.0.2/ICL53F/235179:user/release-keys PRIVATE_BUILD_DESC="mysid-user 4.0.2 ICL53F 235179 release-keys" BUILD_NUMBER=235179

# Inherit common build.prop overrides
-include vendor/pete/products/common_versions.mk

# Copy toro specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/pete/proprietary/tuna/app/Thinkfree.apk:system/app/Thinkfree.apk \
    vendor/pete/proprietary/tuna/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/pete/proprietary/tuna/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/pete/proprietary/tuna/media/PFFprec_600.emd:system/media/PFFprec_600.emd \
    vendor/pete/proprietary/tuna/media/audio/notifications/Nexus.mp3:system/media/audio/notifications/Nexus.mp3 \
    vendor/pete/proprietary/common/app/Microbes.apk:system/app/Microbes.apk \
    vendor/pete/proprietary/common/etc/permissions/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml \
    vendor/pete/proprietary/common/etc/permissions/com.google.android.nfc_extras.xml:system/etc/permissions/com.google.android.nfc_extras.xml \
    vendor/pete/proprietary/common/framework/com.google.android.media.effects.jar:system/framework/com.google.android.media.effects.jar \
    vendor/pete/proprietary/common/framework/com.android.nfc_extras.jar:system/framework/com.android.nfc_extras.jar \
    vendor/pete/proprietary/common/lib/libearthmobile.so:system/lib/libearthmobile.so \
    vendor/pete/proprietary/common/lib/libmicrobes_jni.so:system/lib/libmicrobes_jni.so

# Inherit Face lock security blobs
-include vendor/pete/products/common_facelock.mk

# Inherit drm blobs
-include vendor/pete/products/common_drm.mk


