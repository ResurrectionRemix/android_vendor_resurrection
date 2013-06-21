# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_VERSION_TAGS=release-keys USER=android-build BUILD_UTC_DATE=$(shell date +"%s")

DATE = $(shell vendor/rr/tools/getdate)

ifneq ($(RR_BUILD),)
	# RR_BUILD=<goo version int>/<build string>
	PRODUCT_PROPERTY_OVERRIDES += \
	    ro.goo.developerid=rr \
	    ro.goo.rom=rr\
	    ro.goo.version=$(shell echo $(RR_BUILD) | cut -d/ -f1) \
		ro.rr.version=$(TARGET_PRODUCT)_jb-mr1_$(shell echo $(RR_BUILD) | cut -d/ -f2)
else
	PRODUCT_PROPERTY_OVERRIDES += \
		ro.rr.version=$(TARGET_PRODUCT)_Resurrection_Remix_unofficial_V4.0.2_$(DATE)
endif

# Camera shutter sound property
PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.camera-sound=1
