LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := fake_crypt
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_INIT_RC := fake_crypt.rc
LOCAL_CFLAGS += \
    -Wno-unused-variable \
    -Wno-sign-compare \
    -Wno-unused-parameter \
    -Wno-comment

LOCAL_SRC_FILES += \
    KeyBuffer.cpp \
    Keymaster.cpp \
    main.cpp

LOCAL_SHARED_LIBRARIES += \
    android.hardware.keymaster@4.0 \
    android.hardware.keymaster@4.1 \
    libbinder \
    libhidlbase \
    libkeymaster4support \
    libkeymaster4_1support \
    libutils

include $(BUILD_EXECUTABLE)
