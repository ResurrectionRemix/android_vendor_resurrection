# Primary colors
PRODUCT_PACKAGES += \
    PrimaryColorCharcoalOverlay \
    PrimaryColorFlameOverlay \
    PrimaryColorGrayOverlay \
    PrimaryColorNatureOverlay \
    PrimaryColorOceanOverlay

# Fonts
PRODUCT_PACKAGES += \
    AccuratistFont \
    AclonicaFont \
    Amarante \
    BariolFont \
    CagliostroFont \
    CoconFont \
    ComfortaaFont \
    ComicSansFont \
    CoolstoryFont \
    ExotwoFont \
    Fifa2018Font \
    GoogleSansFont \
    GrandHotelFont \
    LatoFont \
    LGSmartGothicFont \
    NokiaPureFont \
    NunitoFont \
    OneplusSlateFont \
    QuandoFont \
    RedressedFont \
    ReemKufiFont \
    RobotoCondensedFont \
    RosemaryFont \
    RubikFont \
    SamsungOneFont \
    SonySketchFont \
    StoropiaFont \
    SurferFont \
    UbuntuFont

# QS tile styles
PRODUCT_PACKAGES += \
    QStileCircleTrim \
    QStileDefault \
    QStileDualToneCircle \
    QStileHexagon \
    QStileStar \
    QStileSquare \
    QStileGear \
    QStileBadge \
    QStileBadgetwo \
    QStileSquircle \
    QStileDiamond \
    QStileSquircleTrim \
    QStileAttemptMountain \
    QStileDottedCircle \
    QStileNinja \
    QStilePokesign \
    QStileWavey \
    QStileSquaremedo \
    QStileInkDrop \
    QStileCookie \
    QStilesCircleOutline \
    QSTileCosmos \
    QSTileDividedCircle \
    QSTileNeonLight \
    QSTileOxygen \
    QSTileTriangles \
    QSTileTearDrop \
    QStileIconAccent

# Include Google Sounds for all
PRODUCT_PACKAGES += \
   SoundPickerPrebuilt

#RR
PRODUCT_PACKAGES += \
    Updater

# Bootanimation
PRODUCT_COPY_FILES += vendor/rr/prebuilt/common/bootanimation/bootanimation.zip:$(TARGET_COPY_OUT_SYSTEM)/media/bootanimation.zip

# Copy over the changelog to the device
PRODUCT_COPY_FILES += \
    vendor/CHANGELOG.mkdn:system/etc/RR/Changelog.txt

# Copy features.txt from the path
PRODUCT_COPY_FILES += \
vendor/rr/Features.mkdn:system/etc/RR/Features.txt

# Plugins
include packages/apps/Plugins/plugins.mk

# Themes
PRODUCT_PACKAGES += \
    RRClearSystemOverlay \
    RRClearSystemUIOverlay \
    PitchBlackSystemOverlay \
    PitchBlackSystemUIOverlay \
    SolarizedDarkSystemOverlay \
    SolarizedDarkSystemUIOverlay \
    BakedGreenSystemOverlay \
    BakedGreenSystemUIOverlay \
    ChocoXSystemOverlay \
    ChocoXSystemUIOverlay \
    MaterialOceanSystemOverlay \
    MaterialOceanSystemUIOverlay \
    DarkGreySystemOverlay \
    DarkGreySystemUIOverlay

# QS header styles
PRODUCT_PACKAGES += \
    QSHeaderBlack \
    QSHeaderGrey \
    QSHeaderLightGrey \
    QSHeaderAccent \
    QSHeaderTransparent

PRODUCT_PACKAGES += \
        GVM-SBH-L \
        GVM-SBH-M \
        GVM-SBH-XL \
        GVM-URM-M \
        GVM-URM-L \
        GVM-URM-R \
        GVM-URM-S


# ResurrectionRemix Overlays
PRODUCT_PACKAGES += \
    OmniJaws \
    OmniStyle \
    StitchImage \
    CustomDoze \
    ThemePicker 

# Switch Themes
PRODUCT_PACKAGES += \
    ContainedSwitch \
    MD2Switch \
    NarrowSwitch \
    OnePlusSwitch \
    RetroSwitch \
    StockSwitch \
    TelegramSwitch

# Dark Styles
PRODUCT_PACKAGES += \
    SystemAmoledBlack \
    SystemCharcoalBlack

PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,vendor/rr/prebuilt/system/fonts,$(TARGET_COPY_OUT_SYSTEM)/fonts)

# Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := false
ifneq ($(TARGET_DISABLE_ALTERNATIVE_FACE_UNLOCK), true)
PRODUCT_PACKAGES += \
    FaceUnlockService
TARGET_FACE_UNLOCK_SUPPORTED := true
endif
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.face.moto_unlock_service=$(TARGET_FACE_UNLOCK_SUPPORTED)

PRODUCT_PACKAGES += \
    HideCutout \
    ImmersiveMode \
    StatusBarStock \
    StatusBarStockSysUI
