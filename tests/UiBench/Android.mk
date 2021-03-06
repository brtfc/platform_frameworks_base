LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := tests
LOCAL_SDK_VERSION := current
LOCAL_MIN_SDK_VERSION := 21

# omit gradle 'build' dir
LOCAL_SRC_FILES := $(call all-java-files-under,src)

# use appcompat/support lib from the tree, so improvements/
# regressions are reflected in test data
LOCAL_RESOURCE_DIR := \
    $(LOCAL_PATH)/res \
    frameworks/support/design/res \
    frameworks/support/v7/appcompat/res \
    frameworks/support/v7/cardview/res \
    frameworks/support/v7/recyclerview/res \
    frameworks/support/v17/leanback/res

LOCAL_AAPT_FLAGS := \
    --auto-add-overlay \
    --extra-packages android.support.design \
    --extra-packages android.support.v7.appcompat \
    --extra-packages android.support.v7.cardview \
    --extra-packages android.support.v7.recyclerview \
    --extra-packages android.support.v17.leanback

LOCAL_STATIC_JAVA_LIBRARIES := \
    android-support-design \
    android-support-v4 \
    android-support-v7-appcompat \
    android-support-v7-cardview \
    android-support-v7-recyclerview \
    android-support-v17-leanback

LOCAL_PACKAGE_NAME := UiBench

LOCAL_COMPATIBILITY_SUITE := device-tests

include $(BUILD_PACKAGE)
