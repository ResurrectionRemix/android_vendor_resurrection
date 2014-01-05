# World APN list
PRODUCT_COPY_FILES += \
    vendor/cm/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

# World SPN overrides list
PRODUCT_COPY_FILES += \
    vendor/cm/prebuilt/common/etc/spn-conf.xml:system/etc/spn-conf.xml

# Telephony packages
<<<<<<< HEAD
  PRODUCT_PACKAGES += \
     Mms \
     Stk \
     WhisperPush
=======
PRODUCT_PACKAGES += \
    Mms \
    Stk \
    CellBroadcastReceiver \
    WhisperPush
>>>>>>> 4913344... Don't ship CellBroadcastReceiver on wifi-only devices
