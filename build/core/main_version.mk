PRODUCT_VERSION = 8.0.0
ifneq ($(RR_BUILDTYPE),)
RR_VERSION := RR-v$(PRODUCT_VERSION)-$(shell date +%Y%m%d)-$(RR_BUILD)-$(RR_BUILDTYPE)
else
RR_VERSION := RR-v$(PRODUCT_VERSION)-$(shell date +%Y%m%d)-$(RR_BUILD)-Unofficial
RR_BUILDTYPE := Unofficial
endif

# RR System Version

RR_PROPERTIES := \
    ro.rr.version=$(RR_VERSION) \
    ro.rr.releasetype=$(RR_BUILDTYPE) \
    ro.rr.build.version=$(PRODUCT_VERSION) \
    ro.modversion=$(RR_VERSION) \
