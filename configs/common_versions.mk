# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=IML74K BUILD_VERSION_TAGS=release-keys USER=android-build BUILD_UTC_DATE=$(shell date +"%s")

# Rom Manager properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.rommanager.developerid=teamkang \
    ro.modversion=$(TARGET_PRODUCT)_build-25

# Goo updater app
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.developerid=teamkang \
    ro.goo.board=$(TARGET_PRODUCT) \
    ro.goo.rom=aokp_$(TARGET_PRODUCT) \
    ro.goo.version=1


