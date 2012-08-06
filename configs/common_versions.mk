# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=JRO03H BUILD_VERSION_TAGS=release-keys USER=android-build BUILD_UTC_DATE=$(shell date +"%s")

DATE = $(shell date +%h-%d-%y)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.aokp.version=$(TARGET_PRODUCT)_jb-$(DATE)

# Goo updater app
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.developerid=aokp \
    ro.goo.rom=aokp \
    ro.goo.version=20

# Camera shutter sound property
PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.camera-sound=1
