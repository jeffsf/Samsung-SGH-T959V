LOCAL_PATH := $(call my-dir)

#
# copy brcm binaries into android
#
ifeq ($(BOARD_HAVE_BLUETOOTH),true)

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/bin/GT-I9000/btld:system/bin/btld

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/bin/GT-I9000/BCM4329B1_002.002.023.0746.0832.hcd:system/bin/BCM4329B1_002.002.023.0746.0832.hcd

    include $(all-subdir-makefiles)
endif
