SUPERUSER_EMBEDDED := true

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/rr/overlay/common

# Common dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/rr/overlay/dictionaries

PRODUCT_PACKAGES += \
    AOKPtips \
    AppWidgetPicker \
    LatinImeDictionaryPack \
    Microbes \
    PermissionsManager \
    ROMControl \
    Superuser \
    su \
    SwagPapers \
    Torch \
    UpdateMe \
    NotifyMe \
    LockClock \
    FMRadio\
    CMFileManager\
    DSPManager\
    Apollo\
    UnicornPorn

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.com.google.locationfeatures=1 \
    ro.setupwizard.enterprise_mode=1 \
    windowsmgr.max_events_per_sec=240 \
    ro.kernel.android.checkjni=0 \
    persist.sys.root_access=3

PRODUCT_COPY_FILES += \
    vendor/rr/prebuilt/common/lib/libmicrobes_jni.so:system/lib/libmicrobes_jni.so \
    vendor/rr/prebuilt/common/etc/resolv.conf:system/etc/resolv.conf

# init.d
PRODUCT_COPY_FILES += \
    vendor/rr/prebuilt/common/etc/init.local.rc:root/init.aokp.rc \
    vendor/rr/prebuilt/common/etc/init.d/00start:system/etc/init.d/00start \
    vendor/rr/prebuilt/common/etc/init.d/01sysctl:system/etc/init.d/01sysctl \
    vendor/rr/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/rr/prebuilt/common/bin/sysinit:system/bin/sysinit
    

PRODUCT_COPY_FILES += \
    vendor/rr/prebuilt/common/app/NotifyMe.apk:system/app/NotifyMe.apk \
    vendor/rr/prebuilt/common/app/UpdateMe.apk:system/app/UpdateMe.apk 
    vendor/rr/prebuilt/common/app/com.google.android.music-1.apk:system/app/Music.apk

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

PRODUCT_PACKAGES += \
    openvpn \
    e2fsck \
    mke2fs \
    tune2fs \
    libssh \
    ssh \
    sshd \
    sshd-config \
    ssh-keygen \
    sftp \
    scp

# Default ringtone
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Testudo.ogg \
    ro.config.notification_sound=Palladium.ogg \
    ro.config.alarm_alert=Scandium.ogg

PRODUCT_COPY_FILES += packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

# Inherit common build.prop overrides
-include vendor/rr/configs/common_versions.mk

# T-Mobile theme engine
-include vendor/rr/configs/themes_common.mk

	# Installer
PRODUCT_COPY_FILES += \
vendor/rr/prebuilt/common/bin/persist.sh:install/bin/persist.sh \
vendor/rr/prebuilt/common/etc/persist.conf:system/etc/persist.conf

# common boot animation
PRODUCT_COPY_FILES += \
    vendor/rr/prebuilt/bootanimation/xhdpi/bootanimation.zip:system/media/bootanimation.zip
