# Blobs necessary for drm
PRODUCT_COPY_FILES +=  \
    vendor/pete/proprietary/common/etc/permissions/com.google.widevine.software.drm.xml:system/etc/permissions/com.google.widevine.software.drm.xml \
    vendor/pete/proprietary/common/framework/com.google.widevine.software.drm.jar:system/framework/com.google.widevine.software.drm.jar \
    vendor/pete/proprietary/common/lib/libfrsdk.so:system/lib/libfrsdk.so \
    vendor/pete/proprietary/common/lib/libgcomm_jni.so:system/lib/libgcomm_jni.so \
    vendor/pete/proprietary/common/lib/libWVphoneAPI.so:system/lib/libWVphoneAPI.so \
    vendor/pete/proprietary/common/vendor/lib/libwvdrm_L3.so:system/vendor/lib/libwvdrm_L3.so \
    vendor/pete/proprietary/common/vendor/lib/libwvm.so:system/vendor/lib/libwvm.so \
    vendor/pete/proprietary/common/vendor/lib/libWVStreamControlAPI_L3.so:system/vendor/lib/libWVStreamControlAPI_L3.so \
    vendor/pete/proprietary/common/vendor/lib/drm/libdrmwvmplugin.so:system/vendor/lib/drm/libdrmwvmplugin.so \

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true

