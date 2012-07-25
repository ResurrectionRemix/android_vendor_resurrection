# Inherit AOSP device configuration for grouper
$(call inherit-product, device/asus/grouper/full_grouper.mk)

# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_tablet.mk)

# Setup device specific product configuration.
PRODUCT_NAME := aokp_grouper
PRODUCT_BRAND := google
PRODUCT_DEVICE := grouper
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := asus

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=nakasi BUILD_FINGERPRINT=google/nakasi/grouper:4.1.1/JRO03C/398337:user/release-keys PRIVATE_BUILD_DESC="nakasi-user 4.1.1 JRO03C 398337 release-keys" BUILD_NUMBER=398337

# Grouper specific packages
	PRODUCT_PACKAGES += \
	bootanimation_720_1280 \
	NovaLauncher