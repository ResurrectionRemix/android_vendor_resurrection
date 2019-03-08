PRODUCT_VERSION = 7.0.1
ifneq ($(RR_BUILDTYPE),)
RR_VERSION := RR-P-v$(PRODUCT_VERSION)-$(shell date +%Y%m%d)-$(RR_BUILD)-$(RR_BUILDTYPE)
else
RR_VERSION := RR-P-v$(PRODUCT_VERSION)-$(shell date +%Y%m%d)-$(RR_BUILD)-Unofficial
endif

# RR System Version
ADDITIONAL_BUILD_PROPERTIES += \
    ro.rr.version=$(RR_VERSION) \
    ro.rr.releasetype=$(RR_BUILDTYPE) \
    ro.rr.build.version=$(PRODUCT_VERSION) \
    ro.modversion=$(RR_VERSION) \
    ro.lineagelegal.url=https://lineageos.org/legal \
    rr.ota.version= $(shell date +%Y%m%d) \
    ro.rr.tag=$(shell grep "refs/tags" .repo/manifest.xml  | cut -d'"' -f2 | cut -d'/' -f3)

# RR Platform Display Version
ADDITIONAL_BUILD_PROPERTIES += \
    ro.rr.display.version=$(RR_VERSION)

# LineageOS Platform SDK Version
ADDITIONAL_BUILD_PROPERTIES += \
    ro.rr.build.version.plat.sdk=$(LINEAGE_PLATFORM_SDK_VERSION)

# RR Platform Internal Version
ADDITIONAL_BUILD_PROPERTIES += \
    ro.rr.build.version.plat.rev=$(LINEAGE_PLATFORM_REV)
