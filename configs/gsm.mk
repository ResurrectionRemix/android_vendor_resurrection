# GSM APN list
PRODUCT_COPY_FILES += \
    vendor/rr/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

# SIM Toolkit
PRODUCT_PACKAGES += \
    Stk \
    CellBroadcastReceiver

PRODUCT_PROPERTY_OVERRIDES += \
    gsm.current.phone-type=1

