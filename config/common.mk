# Allow vendor/extra to override any property by setting it first
$(call inherit-product-if-exists, vendor/extra/product.mk)

PRODUCT_BRAND ?= ResurrectionRemix

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

ifeq ($(PRODUCT_GMS_CLIENTID_BASE),)
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.com.google.clientidbase=android-google
else
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.com.google.clientidbase=$(PRODUCT_GMS_CLIENTID_BASE)
endif

# Default notification/alarm sounds
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.config.notification_sound=Argon.ogg \
    ro.config.alarm_alert=Hassium.ogg

ifneq ($(TARGET_BUILD_VARIANT),user)
# Thank you, please drive thru!
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += persist.sys.dun.override=0
endif

ifeq ($(TARGET_BUILD_VARIANT),eng)
# Disable ADB authentication
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += ro.adb.secure=0
else
# Enable ADB authentication
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += ro.adb.secure=1
endif

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/rr/prebuilt/common/bin/backuptool.sh:install/bin/backuptool.sh \
    vendor/rr/prebuilt/common/bin/backuptool.functions:install/bin/backuptool.functions \
    vendor/rr/prebuilt/common/bin/50-lineage.sh:$(TARGET_COPY_OUT_SYSTEM)/addon.d/50-lineage.sh \
    vendor/rr/prebuilt/common/bin/blacklist:$(TARGET_COPY_OUT_SYSTEM)/addon.d/blacklist

ifneq ($(AB_OTA_PARTITIONS),)
PRODUCT_COPY_FILES += \
    vendor/rr/prebuilt/common/bin/backuptool_ab.sh:$(TARGET_COPY_OUT_SYSTEM)/bin/backuptool_ab.sh \
    vendor/rr/prebuilt/common/bin/backuptool_ab.functions:$(TARGET_COPY_OUT_SYSTEM)/bin/backuptool_ab.functions \
    vendor/rr/prebuilt/common/bin/backuptool_postinstall.sh:$(TARGET_COPY_OUT_SYSTEM)/bin/backuptool_postinstall.sh
endif

# Backup Services whitelist
PRODUCT_COPY_FILES += \
    vendor/rr/config/permissions/backup.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/backup.xml

# Lineage-specific broadcast actions whitelist
PRODUCT_COPY_FILES += \
    vendor/rr/config/permissions/lineage-sysconfig.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/lineage-sysconfig.xml

# Copy all Lineage-specific init rc files
$(foreach f,$(wildcard vendor/lrr/prebuilt/common/etc/init/*.rc),\
	$(eval PRODUCT_COPY_FILES += $(f):$(TARGET_COPY_OUT_SYSTEM)/etc/init/$(notdir $f)))

# Copy over added mimetype supported in libcore.net.MimeUtils
PRODUCT_COPY_FILES += \
    vendor/rr/prebuilt/common/lib/content-types.properties:$(TARGET_COPY_OUT_SYSTEM)/lib/content-types.properties

# Enable Android Beam on all targets
PRODUCT_COPY_FILES += \
    vendor/rr/config/permissions/android.software.nfc.beam.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.software.nfc.beam.xml

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.software.sip.voip.xml

# Enable wireless Xbox 360 controller support
PRODUCT_COPY_FILES += \
    frameworks/base/data/keyboards/Vendor_045e_Product_028e.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/Vendor_045e_Product_0719.kl

# This is Lineage!
PRODUCT_COPY_FILES += \
    vendor/rr/config/permissions/org.lineageos.android.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/org.lineageos.android.xml \
    vendor/rr/config/permissions/privapp-permissions-lineage-system.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-lineage.xml \
    vendor/rr/config/permissions/privapp-permissions-lineage-product.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-lineage.xml \
    vendor/rr/config/permissions/privapp-permissions-cm-legacy.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-cm-legacy.xml

# Enforce privapp-permissions whitelist
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.control_privapp_permissions=log

# Hidden API whitelist
PRODUCT_COPY_FILES += \
    vendor/rr/config/permissions/lineage-hiddenapi-package-whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/lineage-hiddenapi-package-whitelist.xml

# Power whitelist
PRODUCT_COPY_FILES += \
    vendor/rr/config/permissions/lineage-power-whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/lineage-power-whitelist.xml

# Include AOSP audio files
include vendor/rr/config/aosp_audio.mk

# Include Lineage audio files
include vendor/rr/config/lineage_audio.mk

ifneq ($(TARGET_DISABLE_LINEAGE_SDK), true)
# Lineage SDK
include vendor/rr/config/lineage_sdk_common.mk
endif

# TWRP
ifeq ($(WITH_TWRP),true)
include vendor/rr/config/twrp.mk
endif

# Do not include art debug targets
PRODUCT_ART_TARGET_INCLUDE_DEBUG_BUILD := false

# Strip the local variable table and the local variable type table to reduce
# the size of the system image. This has no bearing on stack traces, but will
# leave less information available via JDWP.
PRODUCT_MINIMIZE_JAVA_DEBUG_INFO := true

# Disable vendor restrictions
PRODUCT_RESTRICT_VENDOR_FILES := false

# Bootanimation
PRODUCT_COPY_FILES += vendor/rr/prebuilt/common/bootanimation/bootanimation.zip:$(TARGET_COPY_OUT_SYSTEM)/media/bootanimation.zip

# ResurrectionRemix
PRODUCT_PACKAGES += \
    ThemePicker

# AOSP packages
PRODUCT_PACKAGES += \
    ExactCalculator \
    Exchange2 \
    Terminal

# Lineage packages
PRODUCT_PACKAGES += \
    AudioFX \
    Backgrounds \
    LineageParts \
    LineageSettingsProvider \
    LineageSetupWizard \
    Eleven \
    Jelly \
    LockClock \
    Profiles \
    TrebuchetQuickStep \
    Updater \
    WeatherProvider

# Berry styles
PRODUCT_PACKAGES += \
    LineageBlackTheme \
    LineageDarkTheme \
    LineageBlackAccent \
    LineageBlueAccent \
    LineageBrownAccent \
    LineageCyanAccent \
    LineageGreenAccent \
    LineageOrangeAccent \
    LineagePinkAccent \
    LineagePurpleAccent \
    LineageRedAccent \
    LineageYellowAccent

# Extra tools in Lineage
PRODUCT_PACKAGES += \
    7z \
    awk \
    bash \
    bzip2 \
    curl \
    getcap \
    htop \
    lib7z \
    libsepol \
    nano \
    pigz \
    powertop \
    setcap \
    unrar \
    unzip \
    vim \
    wget \
    zip

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

# Custom off-mode charger
ifeq ($(WITH_LINEAGE_CHARGER),true)
PRODUCT_PACKAGES += \
    lineage_charger_res_images \
    font_log.png \
    libhealthd.lineage
endif

# Filesystems tools
PRODUCT_PACKAGES += \
    fsck.exfat \
    fsck.ntfs \
    mke2fs \
    mkfs.exfat \
    mkfs.ntfs \
    mount.ntfs

# Openssh
PRODUCT_PACKAGES += \
    scp \
    sftp \
    ssh \
    sshd \
    sshd_config \
    ssh-keygen \
    start-ssh

# rsync
PRODUCT_PACKAGES += \
    rsync

# Storage manager
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.storage_manager.enabled=true

# Media
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    media.recorder.show_manufacturer_and_model=true

# These packages are excluded from user builds
PRODUCT_PACKAGES_DEBUG += \
    procmem

# Conditionally build in su
ifneq ($(TARGET_BUILD_VARIANT),user)
PRODUCT_PACKAGES += \
    adb_root
ifeq ($(WITH_SU),true)
PRODUCT_PACKAGES += \
    su
endif
endif

PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/rr/overlay
DEVICE_PACKAGE_OVERLAYS += vendor/rr/overlay/common

PRODUCT_EXTRA_RECOVERY_KEYS += \
    vendor/rr/build/target/product/security/rr

-include $(WORKSPACE)/build_env/image-auto-bits.mk
-include vendor/rr/config/partner_gms.mk
