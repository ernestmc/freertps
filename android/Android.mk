LOCAL_PATH := $(call my-dir)/..

include $(CLEAR_VARS)
LOCAL_MODULE    := freertps_lib
LOCAL_SRC_FILES += disco.c freertps.c id.c part.c spdp.c sedp.c sub.c pub.c time.c udp.c
LOCAL_SRC_FILES += systems/native-posix/udp.c systems/native-posix/ser.c systems/native-posix/bswap.c systems/native-posix/system.c systems/native-posix/time.c
LOCAL_SRC_FILES += ifaddrs/ifaddrs.c
LOCAL_CFLAGS += -std=c99
LOCAL_C_INCLUDES := $(LOCAL_PATH)/include $(LOCAL_PATH)/ifaddrs
include $(BUILD_STATIC_LIBRARY)
