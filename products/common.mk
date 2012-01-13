# Generic product
PRODUCT_NAME := aokp
PRODUCT_BRAND := aokp
PRODUCT_DEVICE := generic

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/common

PRODUCT_PACKAGES += \
    Camera \
    MusicFX \
    MusicVisualization \
    NoiseField \
    PhaseBeam \
    ROMControl \
    su

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
    vendor/aokp/prebuilt/NovaLauncher.apk:system/app/NovaLauncher.apk \
    vendor/aokp/prebuilt/bootanimation.zip:system/media/bootanimation.zip \
    vendor/aokp/prebuilt/Superuser.apk:system/app/Superuser.apk

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

