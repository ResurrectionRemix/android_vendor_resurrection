LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES := \
    org.dirtyunicorns.navigation-static:org.dirtyunicorns.navigation-static.jar \
    trail-drawing:trail-core-lib-1.0.4-SNAPSHOT.jar \
    rebound:rebound-0.3.8.jar

include $(BUILD_MULTI_PREBUILT)

