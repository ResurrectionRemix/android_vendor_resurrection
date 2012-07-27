$(call inherit-product-if-exists, vendor/aokp/prebuilt/prebuilts.mk)

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/common

# T-Mobile theme engine
include vendor/aokp/configs/themes_common.mk

PRODUCT_PACKAGES += \
    AOKPtips \
    AppWidgetPicker \
    LatinImeDictionary \
    Microbes \
    MusicFX \
    MusicVisualization \
    NoiseField \
    openvpn \
    PhaseBeam \
    ROMControl \
    SuperSU \
    SwagPapers \
    UnicornPorn

# Use prebuilt su until fixed when built
PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/common/xbin/su:system/xbin/su

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.com.google.locationfeatures=1 \
    ro.setupwizard.enterprise_mode=1 \
    windowsmgr.max_events_per_sec=240 \
    ro.kernel.android.checkjni=0

PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/common/lib/libmicrobes_jni.so:system/lib/libmicrobes_jni.so \
    vendor/aokp/prebuilt/common/etc/resolv.conf:system/etc/resolv.conf

# init.d
PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/common/etc/init.d/00check:system/etc/init.d/00check \
    vendor/aokp/prebuilt/common/etc/init.d/01zipalign:system/etc/init.d/01zipalign \
    vendor/aokp/prebuilt/common/etc/init.d/02sysctl:system/etc/init.d/02sysctl \
    vendor/aokp/prebuilt/common/etc/init.d/03firstboot:system/etc/init.d/03firstboot \
    vendor/aokp/prebuilt/common/etc/init.d/05freemem:system/etc/init.d/05freemem \
    vendor/aokp/prebuilt/common/etc/init.d/06removecache:system/etc/init.d/06removecache \
    vendor/aokp/prebuilt/common/etc/init.d/07fixperms:system/etc/init.d/07fixperms \
    vendor/aokp/prebuilt/common/etc/init.d/09cron:system/etc/init.d/09cron \
    vendor/aokp/prebuilt/common/etc/init.d/10sdboost:system/etc/init.d/10sdboost \
    vendor/aokp/prebuilt/common/etc/init.d/98tweaks:system/etc/init.d/98tweaks \
    vendor/aokp/prebuilt/common/etc/init_trigger.disabled:system/etc/init_trigger.disabled \
    vendor/aokp/prebuilt/common/etc/liberty.bsh:system/etc/liberty.bsh \
    vendor/aokp/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf

# Cron
PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/common/etc/cron/cron.conf:system/etc/cron/cron.conf \
    vendor/aokp/prebuilt/common/etc/cron/cron.hourly/00drop_caches:system/etc/cron/cron.hourly/00drop_caches \
    vendor/aokp/prebuilt/common/etc/cron/cron.daily/00drop_caches:system/etc/cron/cron.daily/00drop_caches \
    vendor/aokp/prebuilt/common/etc/cron/cron.weekly/00drop_caches:system/etc/cron/cron.weekly/00drop_caches \
    vendor/aokp/prebuilt/common/etc/cron/cron.hourly/01clear_cache:system/etc/cron/cron.hourly/01clear_cache \
    vendor/aokp/prebuilt/common/etc/cron/cron.daily/01clear_cache:system/etc/cron/cron.daily/01clear_cache \
    vendor/aokp/prebuilt/common/etc/cron/cron.weekly/01clear_cache:system/etc/cron/cron.weekly/01clear_cache

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Live Wallpapers for all
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    MagicSmokeWallpapers \
    VisualizationWallpapers \
    librs_jni

PRODUCT_PACKAGES += \
    openvpn \
    e2fsck \
    mke2fs \
    tune2fs

PRODUCT_COPY_FILES += packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

# Inherit common build.prop overrides
-include vendor/aokp/configs/common_versions.mk
