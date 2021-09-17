
# Build fingerprint
ifneq ($(BUILD_FINGERPRINT),)
ADDITIONAL_BUILD_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
endif

# RR System Version
PRODUCT_VERSION = 8.7.3
ifneq ($(RR_BUILDTYPE),)
RR_VERSION := RROS-Q-$(PRODUCT_VERSION)-$(shell date +%Y%m%d)-$(RR_BUILD)-$(RR_BUILDTYPE)
else
RR_VERSION := RROS-Q-$(PRODUCT_VERSION)-$(shell date +%Y%m%d)-$(RR_BUILD)-Unofficial
RR_BUILDTYPE=Unofficial
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
