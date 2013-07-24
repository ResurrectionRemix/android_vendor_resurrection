# Inherit AOSP device configuration for i9100g.
$(call inherit-product, device/samsung/i9100g/full_i9100g.mk)

# Inherit AOKP common bits
$(call inherit-product, vendor/rr/configs/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/rr/configs/gsm.mk)

# i9100g overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/rr/overlay/i9100

# Setup device specific product configuration.
PRODUCT_DEVICE := i9100g
PRODUCT_NAME := rr_i9100g
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := GT-I9100G

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-I9100G TARGET_DEVICE=GT-I9100G BUILD_FINGERPRINT=samsung/GT-I9100G/GT-I9100G:4.1.2/JZO54K/XXLPQ:user/release-keys PRIVATE_BUILD_DESC="GT-I9100G-user 4.1.2 JZO54K XXLPQ release-keys"
PRODUCT_RELEASE_NAME := GT-I9100G

# Bootanimation
PRODUCT_COPY_FILES += \
   vendor/rr/prebuilt/bootanimation/hdpi/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_COPY_FILES += \
    vendor/rr/prebuilt/preferences/images/phablet.png:system/etc/paranoid/preferences/images/phablet.png \
    vendor/rr/prebuilt/preferences/images/phone.png:system/etc/paranoid/preferences/images/phone.png \
    vendor/rr/prebuilt/preferences/images/tablet.png:system/etc/paranoid/preferences/images/tablet.png \
    vendor/rr/prebuilt/preferences/images/undefined.png:system/etc/paranoid/preferences/images/undefined.png \
    vendor/rr/prebuilt/pa_hdpi.conf:system/etc/paranoid/properties.conf \
    vendor/rr/prebuilt/pa_hdpi.conf:system/etc/paranoid/backup.conf \
    vendor/rr/prebuilt/preferences/pa_hdpi/0_colors.xml:system/etc/paranoid/preferences/0_colors.xml \
    vendor/rr/prebuilt/preferences/pa_hdpi/pref_1.xml:system/etc/paranoid/preferences/pref_1.xml \
    vendor/rr/prebuilt/preferences/pa_hdpi/pref_2.xml:system/etc/paranoid/preferences/pref_2.xml \
    vendor/rr/prebuilt/preferences/pa_hdpi/pref_3.xml:system/etc/paranoid/preferences/pref_3.xml \
    vendor/rr/prebuilt/preferences/pa_hdpi/pref_4.xml:system/etc/paranoid/preferences/pref_4.xml \
    vendor/rr/prebuilt/preferences/pa_hdpi/pref_5.xml:system/etc/paranoid/preferences/pref_5.xml

PRODUCT_COPY_FILES += \
    vendor/rr/prebuilt/i9100g_patch/bin/pvrsrvctl_SGX540_120:system/vendor/bin/pvrsrvctl_SGX540_120 \
    vendor/rr/prebuilt/i9100g_patch/bin/pvrsrvinit:system/vendor/bin/pvrsrvinit \
    vendor/rr/prebuilt/i9100g_patch/lib/egl/libEGL_POWERVR_SGX540_120.so:system/vendor/lib/egl/libEGL_POWERVR_SGX540_120.so \
    vendor/rr/prebuilt/i9100g_patch/lib/egl/libGLESv1_CM_POWERVR_SGX540_120.so:system/vendor/lib/egl/libGLESv1_CM_POWERVR_SGX540_120.so \
    vendor/rr/prebuilt/i9100g_patch/lib/egl/libGLESv2_POWERVR_SGX540_120.so:system/vendor/lib/egl/libGLESv2_POWERVR_SGX540_120.so \
    vendor/rr/prebuilt/i9100g_patch/lib/hw/gralloc.omap4430.so:system/vendor/lib/hw/gralloc.omap4430.so \
    vendor/rr/prebuilt/i9100g_patch/lib/libglslcompiler_SGX540_120.so:system/vendor/lib/libglslcompiler_SGX540_120.so \
    vendor/rr/prebuilt/i9100g_patch/lib/libIMGegl_SGX540_120.so:system/vendor/lib/libIMGegl_SGX540_120.so \
    vendor/rr/prebuilt/i9100g_patch/lib/libpvr2d_SGX540_120.so:system/vendor/lib/libpvr2d_SGX540_120.so \
    vendor/rr/prebuilt/i9100g_patch/lib/libpvrANDROID_WSEGL_SGX540_120.so:system/vendor/lib/libpvrANDROID_WSEGL_SGX540_120.so \
    vendor/rr/prebuilt/i9100g_patch/lib/libPVRScopeServices_SGX540_120.so:system/vendor/lib/libPVRScopeServices_SGX540_120.so \
    vendor/rr/prebuilt/i9100g_patch/lib/libsrv_um_SGX540_120.so:system/vendor/lib/libsrv_um_SGX540_120.so \
    vendor/rr/prebuilt/i9100g_patch/lib/libusc_SGX540_120.so:system/vendor/lib/libusc_SGX540_120.so \
    vendor/rr/prebuilt/i9100g_patch/lib/libsrv_init_SGX540_120.so:system/vendor/lib/libsrv_init_SGX540_120.so
   
# ota
PRODUCT_COPY_FILES += \
	vendor/rr/prebuilt/updateme/i9100g/update_me.xml:system/update_me.xml
