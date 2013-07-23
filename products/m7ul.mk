# Specify phone tech before including full_phone
$(call inherit-product, vendor/rr/configs/gsm.mk)

$(call inherit-product, vendor/rr/configs/common.mk)

# Inherit device configuration
$(call inherit-product, device/htc/m7ul/full_m7ul.mk)

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=m7 BUILD_ID=JZO54K BUILD_FINGERPRINT="htc_europe/m7/m7:4.1.2/JZO54K/177101.12:user/release-keys" PRIVATE_BUILD_DESC="1.29.401.12 CL177101 release-keys"

PRODUCT_COPY_FILES += \
    vendor/rr/prebuilt/bootanimation/1080_1920/bootanimation.zip:system/media/bootanimation.zip
PRODUCT_COPY_FILES += \
    vendor/rr/prebuilt/preferences/images/phablet.png:system/etc/paranoid/preferences/images/phablet.png \
    vendor/rr/prebuilt/preferences/images/phone.png:system/etc/paranoid/preferences/images/phone.png \
    vendor/rr/prebuilt/preferences/images/tablet.png:system/etc/paranoid/preferences/images/tablet.png \
    vendor/rr/prebuilt/preferences/images/undefined.png:system/etc/paranoid/preferences/images/undefined.png \
    vendor/rr/prebuilt/pa_xhdpi.conf:system/etc/paranoid/properties.conf \
    vendor/rr/prebuilt/pa_xhdpi.conf:system/etc/paranoid/backup.conf \
    vendor/rr/prebuilt/preferences/pa_xhdpi/0_colors.xml:system/etc/paranoid/preferences/0_colors.xml \
    vendor/rr/prebuilt/preferences/pa_xhdpi/pref_1.xml:system/etc/paranoid/preferences/pref_1.xml \
    vendor/rr/prebuilt/preferences/pa_xhdpi/pref_2.xml:system/etc/paranoid/preferences/pref_2.xml \
    vendor/rr/prebuilt/preferences/pa_xhdpi/pref_3.xml:system/etc/paranoid/preferences/pref_3.xml \
    vendor/rr/prebuilt/preferences/pa_xhdpi/pref_4.xml:system/etc/paranoid/preferences/pref_4.xml \
    vendor/rr/prebuilt/preferences/pa_xhdpi/pref_5.xml:system/etc/paranoid/preferences/pref_5.xml
    
# ota
PRODUCT_COPY_FILES += \
	vendor/rr/prebuilt/updateme/m7/update_me.xml:system/update_me.xml

# Device naming
PRODUCT_DEVICE := m7ul
PRODUCT_NAME := rr_m7ul
PRODUCT_BRAND := htc
PRODUCT_MODEL := HTC One
PRODUCT_MANUFACTURER := HTC
