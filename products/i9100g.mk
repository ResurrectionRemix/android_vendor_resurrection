# Inherit AOSP device configuration for i9100g.
$(call inherit-product, device/samsung/i9100g/full_i9100g.mk)

# Inherit AOKP common bits
$(call inherit-product, vendor/rr/configs/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/rr/configs/gsm.mk)

# i9100g overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/rr/overlay/i9100

# Setup device specific product configuration.
PRODUCT_DEVICE := i9100g
PRODUCT_NAME := rr_i9100g
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := GT-I9100G

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-I9100G TARGET_DEVICE=GT-I9100G BUILD_FINGERPRINT=samsung/GT-I9100G/GT-I9100G:4.1.2/JZO54K/XXLPQ:user/release-keys PRIVATE_BUILD_DESC="GT-I9100G-user 4.1.2 JZO54K XXLPQ release-keys"
PRODUCT_RELEASE_NAME := GT-I9100G

# Bootanimation
PRODUCT_COPY_FILES += \
   vendor/rr/prebuilt/bootanimation/hdpi/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_COPY_FILES += \
    vendor/rr/prebuilt/preferences/images/phablet.png:system/etc/paranoid/preferences/images/phablet.png \
    vendor/rr/prebuilt/preferences/images/phone.png:system/etc/paranoid/preferences/images/phone.png \
    vendor/rr/prebuilt/preferences/images/tablet.png:system/etc/paranoid/preferences/images/tablet.png \
    vendor/rr/prebuilt/preferences/images/undefined.png:system/etc/paranoid/preferences/images/undefined.png \
    vendor/rr/prebuilt/pa_hdpi.conf:system/etc/paranoid/properties.conf \
    vendor/rr/prebuilt/pa_hdpi.conf:system/etc/paranoid/backup.conf \
    vendor/rr/prebuilt/preferences/pa_hdpi/0_colors.xml:system/etc/paranoid/preferences/0_colors.xml \
    vendor/rr/prebuilt/preferences/pa_hdpi/pref_1.xml:system/etc/paranoid/preferences/pref_1.xml \
    vendor/rr/prebuilt/preferences/pa_hdpi/pref_2.xml:system/etc/paranoid/preferences/pref_2.xml \
    vendor/rr/prebuilt/preferences/pa_hdpi/pref_3.xml:system/etc/paranoid/preferences/pref_3.xml \
    vendor/rr/prebuilt/preferences/pa_hdpi/pref_4.xml:system/etc/paranoid/preferences/pref_4.xml \
    vendor/rr/prebuilt/preferences/pa_hdpi/pref_5.xml:system/etc/paranoid/preferences/pref_5.xml
   
# ota
PRODUCT_COPY_FILES += \
	vendor/rr/prebuilt/updateme/i9100g/update_me.xml:system/update_me.xml
