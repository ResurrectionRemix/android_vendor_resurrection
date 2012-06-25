
# Release name
PRODUCT_RELEASE_NAME := N7000

# Inherit some common AOKP stuff.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

# Add some overlays for toggles
PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/n7000

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/n7000/full_n7000.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := n7000
PRODUCT_NAME := aokp_n7000
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := GT-N7000

#Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-N7000 BUILD_FINGERPRINT=samsung/GT-N7000/GT-N7000:4.0.3/IML74K/ZCLP6:user/release-keys PRIVATE_BUILD_DESC="GT-N7000-user 4.0.3 IML74K ZCLP6 release-keys"

