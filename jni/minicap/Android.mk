LOCAL_PATH := $(call my-dir)

MY_SRC_FILES := \
	minicapws.cpp \

MY_STATIC_LIBRARIES := \
	libjpeg-turbo \
	websocketpp \

MY_SHARED_LIBRARIES := \
	minicap-shared \

include $(CLEAR_VARS)

# Enable PIE manually. Will get reset on $(CLEAR_VARS).
LOCAL_CFLAGS += -fPIE
LOCAL_LDFLAGS += -fPIE -pie

LOCAL_MODULE := minicap

LOCAL_SRC_FILES := $(MY_SRC_FILES)
LOCAL_STATIC_LIBRARIES := $(MY_STATIC_LIBRARIES)
LOCAL_SHARED_LIBRARIES := $(MY_SHARED_LIBRARIES)

include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)

LOCAL_MODULE := minicap-nopie

LOCAL_SRC_FILES := $(MY_SRC_FILES)
LOCAL_STATIC_LIBRARIES := $(MY_STATIC_LIBRARIES)
LOCAL_SHARED_LIBRARIES := $(MY_SHARED_LIBRARIES)

include $(BUILD_EXECUTABLE)