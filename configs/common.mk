SUPERUSER_EMBEDDED := true

# Commonoverlay
PRODUCT_PACKAGE_OVERLAYS += vendor/rr/overlay/common

# Common dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/rr/overlay/dictionaries

PRODUCT_PACKAGES += \
    AOKPtips \
    AppWidgetPicker \
    LatinImeDictionaryPack \
    Microbes \
    ROMControl \
    PermissionsManager \
    Superuser \
    su \
    SwagPapers \
    Torch \
    UpdateMe \
    Halo \
    ChaOSLauncher\
    LockClock \
    CMFileManager\
    DSPManager\
    XposedInstaller\
    AppSettings\
    Trebuchet\
    FMRadio\
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
  vendor/rr/prebuilt/common/app/UpdateMe.apk:system/app/UpdateMe.apk \
  vendor/rr/prebuilt/common/app/Music.apk:system/app/Music.apk \
  vendor/rr/prebuilt/common/app/dpi/XposedInstaller.apk:system/app/XposedInstaller.apk\
  vendor/rr/prebuilt/common/app/DSPManager.apk:system/app/DSPManager.apk\
  vendor/rr/prebuilt/common/app/SunBeam.apk:system/app/SunBeam.apk\
  vendor/rr/prebuilt/common/app/DashClock.apk:system/app/DashClock.apk\
  vendor/rr/prebuilt/common/app/dpi/AppSettings.apk:system/app/AppSettings.apk

 # DSP Activator
 PRODUCT_COPY_FILES += \
    vendor/rr/prebuilt/dsp/etc/audio_effects.conf:system/etc/audio_effects.conf \
    vendor/rr/prebuilt/dsp/lib/soundfx/libaudiopreprocessing.so:system/lib/soundfx/libaudiopreprocessing.so \
    vendor/rr/prebuilt/dsp/lib/soundfx/libbundlewrapper.so:system/lib/soundfx/libbundlewrapper.so \
    vendor/rr/prebuilt/dsp/lib/soundfx/libcyanogen-dsp.so:system/lib/soundfx/libcyanogen-dsp.so \
    vendor/rr/prebuilt/dsp/lib/soundfx/libreverbwrapper.so:system/lib/soundfx/libreverbwrapper.so \
    vendor/rr/prebuilt/dsp/lib/soundfx/libvisualizer.so:system/lib/soundfx/libvisualizer.so \
    vendor/rr/prebuilt/dsp/vendor/etc/audio_effects.conf:system/vendor/etc/audio_effects.conf
PRODUCT_COPY_FILES += \
    vendor/rr/prebuilt/common/etc/init.d/01sysctl:system/etc/init.d/01sysctl \
    vendor/rr/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/rr/prebuilt/common/bin/sysinit:system/bin/sysinit  
      
# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml
	# Installer
PRODUCT_COPY_FILES += \
vendor/rr/prebuilt/common/bin/persist.sh:install/bin/persist.sh \
vendor/rr/prebuilt/ResurrectionRemix-changelog.txt:system/etc/ResurrectionRemix-changelog.txt \
vendor/rr/prebuilt/common/etc/persist.conf:system/etc/persist.conf	    

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

