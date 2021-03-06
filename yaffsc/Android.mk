# Copyright 2005 The Android Open Source Project

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := \
	../../../external/yaffs2/yaffs2/utils/mkyaffs2image.c \
	../../../external/yaffs2/yaffs2/yaffs_packedtags2.c \
	../../../external/yaffs2/yaffs2/yaffs_ecc.c \
	../../../external/yaffs2/yaffs2/yaffs_tagsvalidity.c
LOCAL_CFLAGS =   -O2 -Wall -DCONFIG_YAFFS_UTIL -DCONFIG_YAFFS_DOES_ECC
LOCAL_CFLAGS+=   -Wshadow -Wpointer-arith -Wwrite-strings -Wstrict-prototypes -Wmissing-declarations
LOCAL_CFLAGS+=   -Wmissing-prototypes -Wredundant-decls -Wnested-externs -Winline
LOCAL_CFLAGS+=   -DS_IWRITE=0200 -DS_IREAD=0400
LOCAL_C_INCLUDES += external/yaffs2/yaffs2
LOCAL_MODULE := mkyaffs2image
LOCAL_STATIC_LIBRARIES := libselinux
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := \
	../../../external/yaffs2/yaffs2/utils/mkyaffs2image.c \
	../../../external/yaffs2/yaffs2/yaffs_packedtags2.c \
	../../../external/yaffs2/yaffs2/yaffs_ecc.c \
	../../../external/yaffs2/yaffs2/yaffs_tagsvalidity.c
LOCAL_CFLAGS =   -O2 -Wall -DCONFIG_YAFFS_UTIL -DCONFIG_YAFFS_DOES_ECC
LOCAL_CFLAGS+=   -Wshadow -Wpointer-arith -Wwrite-strings -Wstrict-prototypes -Wmissing-declarations
LOCAL_CFLAGS+=   -Wmissing-prototypes -Wredundant-decls -Wnested-externs -Winline
LOCAL_CFLAGS+=   -DS_IWRITE=0200 -DS_IREAD=0400
LOCAL_C_INCLUDES += external/yaffs2/yaffs2
LOCAL_MODULE := libmkyaffs2image
LOCAL_MODULE_TAGS := eng
LOCAL_CFLAGS += -Dmain=mkyaffs2image_main
LOCAL_STATIC_LIBRARIES := libselinux
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := libunyaffs
LOCAL_SRC_FILES := unyaffs.c
LOCAL_MODULE_TAGS := eng
LOCAL_CFLAGS =   -O2 -Wall -DCONFIG_YAFFS_UTIL -DCONFIG_YAFFS_DOES_ECC
LOCAL_CFLAGS+=   -Wshadow -Wpointer-arith -Wwrite-strings -Wstrict-prototypes -Wmissing-declarations
LOCAL_CFLAGS+=   -Wmissing-prototypes -Wredundant-decls -Wnested-externs -Winline
LOCAL_CFLAGS+=   -DS_IWRITE=0200 -DS_IREAD=0400
LOCAL_C_INCLUDES += external/yaffs2/yaffs2
LOCAL_CFLAGS += -Dmain=unyaffs_main

include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := unyaffs
LOCAL_SRC_FILES := unyaffs.c
LOCAL_MODULE_TAGS := eng
LOCAL_CFLAGS =   -O2 -Wall -DCONFIG_YAFFS_UTIL -DCONFIG_YAFFS_DOES_ECC
LOCAL_CFLAGS+=   -Wshadow -Wpointer-arith -Wwrite-strings -Wstrict-prototypes -Wmissing-declarations
LOCAL_CFLAGS+=   -Wmissing-prototypes -Wredundant-decls -Wnested-externs -Winline
LOCAL_CFLAGS+=   -DS_IWRITE=0200 -DS_IREAD=0400
LOCAL_C_INCLUDES += external/yaffs2/yaffs2
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_MODULE := unyaffs
LOCAL_SRC_FILES := unyaffs.c
LOCAL_CFLAGS =   -O2 -Wall -DCONFIG_YAFFS_UTIL -DCONFIG_YAFFS_DOES_ECC
LOCAL_CFLAGS+=   -Wshadow -Wpointer-arith -Wwrite-strings -Wstrict-prototypes -Wmissing-declarations
LOCAL_CFLAGS+=   -Wmissing-prototypes -Wredundant-decls -Wnested-externs -Winline
LOCAL_CFLAGS+=   -DS_IWRITE=0200 -DS_IREAD=0400
LOCAL_C_INCLUDES += external/yaffs2/yaffs2
include $(BUILD_HOST_EXECUTABLE)
