# Inherit AOSP device configuration .
$(call inherit-product, device/samsung/n7100/full_n7100.mk)

# Inherit common product files.
$(call inherit-product, vendor/rr/configs/common.mk)
# Inherit GSM common stuff
$(call inherit-product, vendor/rr/configs/gsm.mk)

# skyrocket overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/rr/overlay/samsung_note_common

# Setup device specific product configuration.
PRODUCT_NAME := rr_n7100
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := n7100
PRODUCT_MODEL := GT-N7100
PRODUCT_MANUFACTURER := samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=t03gxx TARGET_DEVICE=t03g BUILD_FINGERPRINT="samsung/t03gxx/t03g:4.1.1/JRO03C/N7100XXALJ3:user/release-keys" PRIVATE_BUILD_DESC="t03gxx-user 4.1.1 JRO03C N7100XXALJ3 release-keys"
PRODUCT_RELEASE_NAME := n7100

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
    
# boot animation
PRODUCT_COPY_FILES += \
	vendor/rr/prebuilt/bootanimation/xhdpi/bootanimation.zip:system/media/bootanimation.zip
	
# ota
PRODUCT_COPY_FILES += \
	vendor/rr/prebuilt/updateme/n7100/update_me.xml:system/update_me.xml
