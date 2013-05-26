# Inherit AOSP device configuration for i605.
$(call inherit-product, device/samsung/i605/full_i605.mk)

# Inherit common cdma apns
$(call inherit-product, vendor/aokp/configs/cdma.mk)

# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/t0ltecdma

# Setup device specific product configuration.
PRODUCT_NAME := aokp_i605
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := i605
PRODUCT_MODEL := SCH-I605
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=t0ltevzw TARGET_DEVICE=t0ltevzw BUILD_FINGERPRINT="Verizon/t0ltevzw/t0ltevzw:4.1.2/JZO54K/I605VRAMC3:user/release-keys" PRIVATE_BUILD_DESC="t0ltevzw-user 4.1.2 JZO54K I605VRAMC3 release-keys"

# boot animation
PRODUCT_COPY_FILES += \
vendor/aokp/prebuilt/bootanimation/bootanimation_720_1280.zip:system/media/bootanimation-alt.zip
