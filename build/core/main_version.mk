# Properties for build flash info script
ADDITIONAL_BUILD_PROPERTIES += \
    ro.rr.version=$(RR_VERSION) \
    ro.rr.releasetype=$(RR_BUILDTYPE) \
    ro.rr.build.version=$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR) \
    ro.modversion=$(RR_VERSION) \
    rr.build.type=$(RR_BUILDTYPE) \
    rr.ota.version= $(shell date +%Y%m%d) \
    ro.rr.tag=$(shell grep "refs/tags" .repo/manifest.xml  | cut -d'"' -f2 | cut -d'/' -f3)

# RROS Platform Display Version
ADDITIONAL_BUILD_PROPERTIES +=
    ro.rr.display.version=$(RR_DISPLAY_VERSION)
