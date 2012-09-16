LOCAL_PATH := $(call my-dir)

#
# copy brcm binaries into android
#
ifeq ($(BOARD_HAVE_BLUETOOTH),true)
#ifeq ($(TARGET_PRODUCT),GT-I9000)
ifeq ($(X_BUILD_LOCALE), S1_NTT)
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/bin/GalaxyS/btld:system/bin/btld \
	$(LOCAL_PATH)/bin/GalaxyS/BCM4329B1_002.002.023.0417.0430.hcd:system/bin/BCM4329B1_002.002.023.0417.0430.hcd
else ifeq ($(X_BUILD_PROJECT),kepler)
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/bin/TN_US_ATT_KEPLER/btld:system/bin/btld \
	$(LOCAL_PATH)/bin/GalaxyS/BCM4329B1_002.002.023.0417.0430.hcd:system/bin/BCM4329B1_002.002.023.0417.0430.hcd
else ifeq ($(X_BUILD_PROJECT),hawk)
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/bin/TN_US_TMO_HAWK/btld:system/bin/btld \
	$(LOCAL_PATH)/bin/TN_US_TMO_HAWK/BCM4329B1_002.002.023.0589.0651.hcd:system/bin/BCM4329B1_002.002.023.0589.0651.hcd
else ifeq ($(X_BUILD_PROJECT),dempsey)
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/bin/TN_US_ATT_DEMPSEY/btld:system/bin/btld \
	$(LOCAL_PATH)/bin/TN_US_ATT_DEMPSEY/BCM4330B1_002.001.003.0006.0000_SS-SWB-B42_NoExtLNA_37_4MHz-TEST-ONLY.hcd:system/bin/BCM4330B1_002.001.003.0006.0000_SS-SWB-B42_NoExtLNA_37_4MHz-TEST-ONLY.hcd \
	$(LOCAL_PATH)/bin/TN_US_ATT_DEMPSEY/BCM4330B0_002.001.019.0024.0000_SS_Dempsey_37_4MHz-TEST-ONLY.hcd:system/bin/BCM4330B0_002.001.019.0024.0000_SS_Dempsey_37_4MHz-TEST-ONLY.hcd
else ifeq ($(X_BUILD_PROJECT),vibrantplus)
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/bin/TN_US_TMO_VIBRANTPLUS/btld:system/bin/btld \
	$(LOCAL_PATH)/bin/TN_US_TMO_VIBRANTPLUS/BCM4329B1_002.002.023.0589.0743.hcd:system/bin/BCM4329B1_002.002.023.0589.0743.hcd
else ifeq ($(X_BUILD_PROJECT),vibrantplustelus)
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/bin/TN_US_TMO_VIBRANTPLUS/btld:system/bin/btld \
	$(LOCAL_PATH)/bin/TN_US_TMO_VIBRANTPLUS/BCM4329B1_002.002.023.0589.0743.hcd:system/bin/BCM4329B1_002.002.023.0589.0743.hcd
else
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/bin/GalaxyS/btld:system/bin/btld \
	$(LOCAL_PATH)/bin/GalaxyS/BCM4329B1_002.002.023.0417.0430.hcd:system/bin/BCM4329B1_002.002.023.0417.0430.hcd
endif
    include $(all-subdir-makefiles)
endif
