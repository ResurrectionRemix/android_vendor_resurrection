# Inherit common CM stuff
$(call inherit-product, vendor/cm/config/common.mk)

# Bring in all video files
# $(call inherit-product, frameworks/base/data/videos/VideoPackage2.mk)

# Include CM audio files
include vendor/cm/config/cm_audio.mk

# Include CM LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/cm/overlay/dictionaries

# Optional packages
PRODUCT_PACKAGES += \
    LiveWallpapersPicker \
    PhaseBeam \
    PhotoTable \
    SoundRecorder \
    OmniSwitch \

# Paranoid Android's Lightbulb app
# To enable flashlight support in this app, follow this commit
# for your device. Link - http://goo.gl/BFu51i

# PRODUCT_PACKAGES += \
#     Lightbulb \

PRODUCT_PACKAGES += \
    VideoEditor \
    libvideoeditor_jni \
    libvideoeditor_core \
    libvideoeditor_osal \
    libvideoeditor_videofilters \
    libvideoeditorplayer

# Stagefright FFMPEG plugin
PRODUCT_PACKAGES += \
    libstagefright_soft_ffmpegadec \
    libstagefright_soft_ffmpegvdec \
    libFFmpegExtractor \
    libnamparser

# Extra tools in CM
PRODUCT_PACKAGES += \
    vim
