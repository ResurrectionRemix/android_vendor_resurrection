PRODUCT_BRAND ?= ResurrectionRemix

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

ifeq ($(PRODUCT_GMS_CLIENTID_BASE),)
PRODUCT_GENERIC_PROPERTIES += \
    ro.com.google.clientidbase=android-google
else
PRODUCT_GENERIC_PROPERTIES += \
    ro.com.google.clientidbase=$(PRODUCT_GMS_CLIENTID_BASE)
endif

PRODUCT_GENERIC_PROPERTIES += \
    keyguard.no_require_sim=true

PRODUCT_GENERIC_PROPERTIES += \
    ro.build.selinux=1

# Default notification/alarm sounds
PRODUCT_GENERIC_PROPERTIES += \
    ro.config.notification_sound=Argon.ogg \
    ro.config.alarm_alert=Hassium.ogg

ifneq ($(TARGET_BUILD_VARIANT),user)
# Thank you, please drive thru!
PRODUCT_GENERIC_PROPERTIES += persist.sys.dun.override=0
endif

ifneq ($(TARGET_BUILD_VARIANT),eng)
# Enable ADB authentication
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.adb.secure=1
endif

ifeq ($(BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE),)
  PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.device.cache_dir=/data/cache
else
  PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.device.cache_dir=/cache
endif

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/rr/prebuilt/common/bin/backuptool.sh:install/bin/backuptool.sh \
    vendor/rr/prebuilt/common/bin/backuptool.functions:install/bin/backuptool.functions \
    vendor/rr/prebuilt/common/bin/blacklist:system/addon.d/blacklist \
    vendor/rr/prebuilt/common/bin/clean_cache.sh:system/bin/clean_cache.sh

# Backup Services whitelist
PRODUCT_COPY_FILES += \
    vendor/rr/config/permissions/backup.xml:system/etc/sysconfig/backup.xml

# RR-specific broadcast actions whitelist
PRODUCT_COPY_FILES += \
    vendor/rr/config/permissions/rr-sysconfig.xml:system/etc/sysconfig/rr-sysconfig.xml

# Signature compatibility validation
PRODUCT_COPY_FILES += \
    vendor/rr/prebuilt/common/bin/otasigcheck.sh:install/bin/otasigcheck.sh

# init.d support
PRODUCT_COPY_FILES += \
    vendor/rr/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/rr/prebuilt/common/bin/sysinit:system/bin/sysinit

ifneq ($(TARGET_BUILD_VARIANT),user)
# userinit support
PRODUCT_COPY_FILES += \
    vendor/rr/prebuilt/common/etc/init.d/90userinit:system/etc/init.d/90userinit
endif

# Copy all rr-specific init rc files
$(foreach f,$(wildcard vendor/rr/prebuilt/common/etc/init/*.rc),\
	$(eval PRODUCT_COPY_FILES += $(f):system/etc/init/$(notdir $f)))

# Copy over added mimetype supported in libcore.net.MimeUtils
PRODUCT_COPY_FILES += \
    vendor/rr/prebuilt/common/lib/content-types.properties:system/lib/content-types.properties

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Enable wireless Xbox 360 controller support
PRODUCT_COPY_FILES += \
    frameworks/base/data/keyboards/Vendor_045e_Product_028e.kl:system/usr/keylayout/Vendor_045e_Product_0719.kl

# This is RR! (Based on LineageOS)
PRODUCT_COPY_FILES += \
    vendor/rr/config/permissions/org.lineageos.android.xml:system/etc/permissions/org.lineageos.android.xml \
    vendor/rr/config/permissions/privapp-permissions-lineage.xml:system/etc/permissions/privapp-permissions-lineage.xml

# Include audio files
include vendor/rr/config/rr_audio.mk

ifneq ($(TARGET_DISABLE_LINEAGE_SDK), true)
# Lineage SDK
include vendor/rr/config/lineage_sdk_common.mk
endif

# TWRP
ifeq ($(WITH_TWRP),true)
include vendor/rr/config/twrp.mk
endif

# Bootanimation
ifneq ($(TARGET_SCREEN_WIDTH) $(TARGET_SCREEN_HEIGHT),$(space))
# determine the smaller dimension
TARGET_BOOTANIMATION_SIZE := $(shell \
  if [ "$(TARGET_SCREEN_WIDTH)" -lt "$(TARGET_SCREEN_HEIGHT)" ]; then \
    echo $(TARGET_SCREEN_WIDTH); \
  else \
    echo $(TARGET_SCREEN_HEIGHT); \
  fi )

# get a sorted list of the sizes
bootanimation_sizes := $(subst .zip,,$(shell ls -1 vendor/rr/prebuilt/common/bootanimation | sort -rn))

# find the appropriate size and set
define check_and_set_bootanimation
$(eval TARGET_BOOTANIMATION_NAME := $(shell \
  if [ -z "$(TARGET_BOOTANIMATION_NAME)" ]; then \
    if [ "$(1)" -le "$(TARGET_BOOTANIMATION_SIZE)" ]; then \
      echo $(1); \
      exit 0; \
    fi;
  fi;
  echo $(TARGET_BOOTANIMATION_NAME); ))
endef
$(foreach size,$(bootanimation_sizes), $(call check_and_set_bootanimation,$(size)))

PRODUCT_COPY_FILES += vendor/rr/prebuilt/common/bootanimation/$(TARGET_BOOTANIMATION_NAME).zip:system/media/bootanimation.zip
endif

# Required rr packages
PRODUCT_PACKAGES += \
    BluetoothExt \
    LineageParts \
    Development \
    Profiles

# Optional packages
PRODUCT_PACKAGES += \
    libemoji \
    LiveWallpapersPicker \
    PhotoTable \
    Terminal

# Include explicitly to work around GMS issues
PRODUCT_PACKAGES += \
    libprotobuf-cpp-full \
    librsjni

# Custom rr packages
PRODUCT_PACKAGES += \
    AudioFX \
    LineageSettingsProvider \
    Eleven \
    ExactCalculator \
    Trebuchet \
    LockClock \
    Updater \
    SnapdragonCamera2 \
    WallpaperPicker \
    WeatherProvider \
    OmniJaws \
    OmniStyle \
    ResurrectionOTA \
    ResurrectionStats

# Exchange support
PRODUCT_PACKAGES += \
    Exchange2

# Extra tools in RR
PRODUCT_PACKAGES += \
    7z \
    bash \
    bzip2 \
    curl \
    fsck.ntfs \
    gdbserver \
    htop \
    lib7z \
    libsepol \
    micro_bench \
    mke2fs \
    mkfs.ntfs \
    mount.ntfs \
    oprofiled \
    pigz \
    powertop \
    sqlite3 \
    strace \
    tune2fs \
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

# ExFAT support
WITH_EXFAT ?= true
ifeq ($(WITH_EXFAT),true)
TARGET_USES_EXFAT := true
PRODUCT_PACKAGES += \
    mount.exfat \
    fsck.exfat \
    mkfs.exfat
endif

# Openssh
PRODUCT_PACKAGES += \
    scp \
    sftp \
    ssh \
    sshd \
    sshd_config \
    ssh-keygen \
    start-ssh

# Copy over the changelog to the device
PRODUCT_COPY_FILES += \
    CHANGELOG.mkdn:system/etc/RR/Changelog.txt

# Copy features.txt from the path
PRODUCT_COPY_FILES += \
    vendor/rr/Features.mkdn:system/etc/RR/Features.txt
    
# Included prebuilt apk's
PRODUCT_PACKAGES += \
    GoogleClock \
    Wallpapers
 
# rsync
PRODUCT_PACKAGES += \
    rsync

# DUI Utils Library
PRODUCT_PACKAGES += \
    org.dirtyunicorns.utils

PRODUCT_BOOT_JARS += \
    org.dirtyunicorns.utils

# Stagefright FFMPEG plugin
PRODUCT_PACKAGES += \
    libffmpeg_extractor \
    libffmpeg_omx \
    media_codecs_ffmpeg.xml

PRODUCT_GENERIC_PROPERTIES += \
    media.sf.omx-plugin=libffmpeg_omx.so \
    media.sf.extractor-plugin=libffmpeg_extractor.so

# Storage manager
PRODUCT_GENERIC_PROPERTIES += \
    ro.storage_manager.enabled=true

# Media
PRODUCT_GENERIC_PROPERTIES += \
    media.recorder.show_manufacturer_and_model=true

# These packages are excluded from user builds
ifneq ($(TARGET_BUILD_VARIANT),user)
PRODUCT_PACKAGES += \
    procmem \
    procrank

# Conditionally build in su
ifeq ($(WITH_SU),true)
PRODUCT_PACKAGES += \
    su
endif
endif

DEVICE_PACKAGE_OVERLAYS += vendor/rr/overlay/common

PRODUCT_VERSION = 6.0.0
ifneq ($(RR_BUILDTYPE),)
RR_VERSION := RR-O-v$(PRODUCT_VERSION)-$(shell date +%Y%m%d)-$(RR_BUILD)-$(RR_BUILDTYPE)
else
RR_VERSION := RR-O-v$(PRODUCT_VERSION)-$(shell date +%Y%m%d)-$(RR_BUILD)
endif

PRODUCT_GENERIC_PROPERTIES += \
    ro.rr.version=$(RR_VERSION) \
    ro.rr.releasetype=$(RR_BUILDTYPE) \
    ro.rr.build.version=$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR) \
    ro.modversion=$(RR_VERSION) \
    rr.build.type=$(RR_BUILDTYPE) \
    rr.ota.version= $(shell date +%Y%m%d) \
    ro.rr.tag=$(shell grep "refs/tags" .repo/manifest.xml  | cut -d'"' -f2 | cut -d'/' -f3)

PRODUCT_EXTRA_RECOVERY_KEYS += \
    vendor/rr/build/target/product/security/rr

RR_DISPLAY_VERSION := $(RR_VERSION)

PRODUCT_GENERIC_PROPERTIES += \
    ro.rr.display.version=$(RR_DISPLAY_VERSION)

-include $(WORKSPACE)/build_env/image-auto-bits.mk
-include vendor/rr/config/partner_gms.mk

$(call prepend-product-if-exists, vendor/extra/product.mk)
