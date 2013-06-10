# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_VERSION_TAGS=release-keys USER=android-build BUILD_UTC_DATE=$(shell date +"%s")

DATE = $(shell vendor/rr/tools/getdate)
RR_BRANCH=jb-mr1

ifneq ($(RR_BUILD),)
	# RR_BUILD=<goo version int>/<build string>
	PRODUCT_PROPERTY_OVERRIDES += \
	    ro.goo.developerid=rr \
	    ro.goo.rom=rr\
	    ro.goo.version=$(shell echo $(RR_BUILD) | cut -d/ -f1) \
		ro.rr.version=$(TARGET_PRODUCT)_$(RR_BRANCH)_$(shell echo $(RR_BUILD) | cut -d/ -f2)
else
	PRODUCT_PROPERTY_OVERRIDES += \
		ro.rr.version=$(TARGET_PRODUCT)_Resurrection_Remix_unofficial_V4.0.1_$(DATE)
endif

	# needed for statistics 	25
PRODUCT_PROPERTY_OVERRIDES += \	26
        ro.aokp.branch=$(RR_BRANCH) \	27
        ro.aokp.device=$(RR_PRODUCT)

# Camera shutter sound property
PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.camera-sound=1
