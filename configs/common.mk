# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/common

# T-Mobile theme engine
include vendor/aokp/configs/themes_common.mk

PRODUCT_PACKAGES += \
    MusicFX \
    MusicVisualization \
    NoiseField \
    ROMControl \
    PhaseBeam \
    su \
    AppWidgetPicker \
    openvpn

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

# Blobs common to all devices
PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/common/app/Superuser.apk:system/app/Superuser.apk \
    vendor/aokp/prebuilt/common/app/LatinImeDictionaryPack.apk:system/app/LatinImeDictionaryPack.apk \
    vendor/aokp/prebuilt/common/etc/resolv.conf:system/etc/resolv.conf  \
    vendor/aokp/prebuilt/common/app/Microbes.apk:system/app/Microbes.apk \
    vendor/aokp/prebuilt/common/lib/libmicrobes_jni.so:system/lib/libmicrobes_jni.so \
    vendor/aokp/prebuilt/common/app/UnicornPorn.apk:system/app/UnicornPorn.apk
    
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
    
# Adding files needed for extra camera features
PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/aokp/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd \
    vendor/aokp/prebuilt/common/media/video/AndroidInSpace.240p.mp4:system/media/video/AndroidInSpace.240p.mp4 \
    vendor/aokp/prebuilt/common/media/video/AndroidInSpace.480p.mp4:system/media/video/AndroidInSpace.480p.mp4 \
    vendor/aokp/prebuilt/common/media/video/Disco.240p.mp4:system/media/video/Disco.240p.mp4 \
    vendor/aokp/prebuilt/common/media/video/Disco.480p.mp4:system/media/video/Disco.480p.mp4 \
    vendor/aokp/prebuilt/common/media/video/Sunset.240p.mp4:system/media/video/Sunset.240p.mp4 \
    vendor/aokp/prebuilt/common/media/video/Sunset.480p.mp4:system/media/video/Sunset.480p.mp4 

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Live wallpapers for all
PRODUCT_PACKAGES += \
		LiveWallpapers \
		LiveWallpapersPicker \
		MagicSmokeWallpapers \
		VisualizationWallpapers \
		librs_jni

PRODUCT_COPY_FILES += packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

# Inherit common build.prop overrides
-include vendor/aokp/configs/common_versions.mk
