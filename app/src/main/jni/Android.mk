LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := jni
LOCAL_SRC_FILES := jni.cpp

LOCAL_CFLAGS    := -DANDROID_STL=c++_shared \
	-DTARGET_OS=android -D__ANDROID__ \
	-isystem $(SYSROOT)/usr/include

APP_PLATFORM := android-14

APP_ALLOW_MISSING_DEPS=true

LOCAL_STATIC_LIBRARIES := stockfish

include $(BUILD_SHARED_LIBRARY)

#include ~/StudioProjects/material-chess-android/app/src/main/jni/stockfish/Android.mk
include src/main/jni/stockfish/Android.mk
