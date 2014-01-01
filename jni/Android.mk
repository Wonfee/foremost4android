LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	api.c \
	cli.c \
	config.c \
	dir.c \
	engine.c \
	extract.c \
	helpers.c \
	main.c \
	state.c \

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH) \

LOCAL_CFLAGS += -D__LINUX -DLARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -DVERSION=\"1.5.7\" -D__UNIX

LOCAL_MODULE := foremost
LOCAL_MODULE_TAGS : optional
include $(BUILD_EXECUTABLE)
