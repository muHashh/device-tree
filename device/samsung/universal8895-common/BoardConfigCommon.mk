#
# Copyright (C) 2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# Common options build
# DEVICE_SLSI_VARIANT_CM := true

LOCAL_PATH := device/samsung/universal8895-common

# Include path
TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# Firmware
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Platform
TARGET_BOARD_PLATFORM := exynos5
# TARGET_SLSI_VARIANT := cm
TARGET_SLSI_VARIANT := bsp
TARGET_SOC := exynos8895
TARGET_BOOTLOADER_BOARD_NAME := universal8895

# CPU Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

# Secondary Architecture
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

# Renderscript
BOARD_OVERRIDE_RS_CPU_VARIANT_32 := cortex-a53
BOARD_OVERRIDE_RS_CPU_VARIANT_64 := exynos-m1

# CPUsets
ENABLE_CPUSETS := true

# Binder
TARGET_USES_64_BIT_BINDER := true

# Kernel
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
KERNEL_TOOLCHAIN := $(shell pwd)/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9-kernel/bin

# Extracted with libbootimg
BOARD_CUSTOM_BOOTIMG := true
BOARD_CUSTOM_BOOTIMG_MK := hardware/samsung/mkbootimg.mk
#  BOARD_CUSTOM_BOOTIMG_MK := device/samsung/universal8895-common/mkbootimg.mk
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_IMAGE_NAME := Image
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SEPARATED_DT := true
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100
TARGET_CUSTOM_DTBTOOL := dtbhtoolExynos

# TARGET_KERNEL_CLANG_COMPILE := true
# BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
# BOARD_KERNEL_CMDLINE += androidboot.hardware=samsungexynos8895

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE     :=  41943040 #(40960 sda7)
BOARD_RECOVERYIMAGE_PARTITION_SIZE :=  48234496 #(47104 sda8)
BOARD_SYSTEMIMAGE_PARTITION_SIZE   :=  4561305600 #(4454400 sda17)
BOARD_USERDATAIMAGE_PARTITION_SIZE :=  58556678144 #(57184256 sda24)
BOARD_CACHEIMAGE_PARTITION_SIZE    :=  524288000 #(512000 sda18)

# blockdev --getbsz /dev/block/mmcblk0p9
BOARD_FLASH_BLOCK_SIZE := 4096

# Use these flags if the board has a ext4 partition larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true

# Filesystem
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
# BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4

# Use SDFat for exfat driver
TARGET_EXFAT_DRIVER := sdfat

# Disable Block based zips (makes korean versions compatible)
BLOCK_BASED_OTA := false

# Always build with su-binary
WITH_SU := true

# Fonts
EXTENDED_FONT_FOOTPRINT := true

# Video scaling issue workaround
TARGET_OMX_LEGACY_RESCALING := true

# Malloc
# MALLOC_SVELTE := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
# BOARD_HAVE_SAMSUNG_BLUETOOTH := true
BOARD_CUSTOM_BT_CONFIG := $(LOCAL_PATH)/bluetooth/libbt_vndcfg.txt
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# Samsung HALs
# TARGET_AUDIOHAL_VARIANT := samsung
# TARGET_POWERHAL_VARIANT := samsung
# TARGET_SEC_FP_HAL_VARIANT := bauth

# LineageOS HW
#JAVA_SOURCE_OVERLAYS := \
#    org.lineageos.hardware|hardware/samsung/lineagehw|**/*.java

# Samsung Hardware
JAVA_SOURCE_OVERLAYS := \
    org.lineageos.hardware|device/samsung/universal8895-common/lineagehw|**/*.java

# Samsung Camera
BOARD_USE_SAMSUNG_CAMERAFORMAT_NV21 := true
# TARGET_SPECIFIC_CAMERA_PARAMETER_LIBRARY := libcamera_parameters_exynos8895
TARGET_CAMERA_NEEDS_ADD_STATES_IN_ENUMERATE := true
# TARGET_CAMERA_BOOTTIME_TIMESTAMP := true

# Graphics
USE_OPENGL_RENDERER := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3

# Defines library for GPU accelerated Renderscript
OVERRIDE_RS_DRIVER := libRSDriverArm.so

ifeq ($(DEVICE_SLSI_VARIANT_CM),true)
# Security
# BOARD_USES_TRUST_KEYMASTER := true

# HWCServices
# BOARD_USES_HWC_SERVICES := true

# WFD
# BOARD_USES_WFD := true

# Virtual display
# BOARD_USES_VIRTUAL_DISPLAY := true

# ION
TARGET_USES_ION := true

# HDMI
BOARD_HDMI_INCAPABLE := true
BOARD_USES_GSC_VIDEO := true

# FIMG2D
BOARD_USES_SKIA_FIMGAPI := true

# (G)SCALER
BOARD_USES_SCALER := true
BOARD_USES_DT := true

# Samsung OpenMAX Video
#BOARD_USE_STOREMETADATA := true  -- not working due to invalid buffer handles
BOARD_USE_METADATABUFFERTYPE := true
BOARD_USE_DMA_BUF := true
BOARD_USE_ANB_OUTBUF_SHARE := true
BOARD_USE_IMPROVED_BUFFER := true
BOARD_USE_NON_CACHED_GRAPHICBUFFER := true
BOARD_USE_GSC_RGB_ENCODER := true
BOARD_USE_CSC_HW := false
BOARD_USE_QOS_CTRL := false
BOARD_USE_S3D_SUPPORT := true
BOARD_USE_VP8ENC_SUPPORT := true
else
# BSPFLAG
# TARGET_LINUX_KERNEL_VERSION := 3.18

# Display
BOARD_USES_EXYNOS5_COMMON_GRALLOC := true

# Samsung OpenMAX Video
BOARD_USE_STOREMETADATA := false
BOARD_USE_METADATABUFFERTYPE := true
BOARD_USE_DMA_BUF := true
BOARD_USE_ANB_OUTBUF_SHARE := true
BOARD_USE_IMPROVED_BUFFER := true
BOARD_USE_NON_CACHED_GRAPHICBUFFER := true
BOARD_USE_GSC_RGB_ENCODER := true
BOARD_USE_CSC_HW := false
BOARD_USE_QOS_CTRL := false
BOARD_USE_S3D_SUPPORT := false
BOARD_USE_TIMESTAMP_REORDER_SUPPORT := true
BOARD_USE_DEINTERLACING_SUPPORT := true
BOARD_USE_VP8ENC_SUPPORT := true
BOARD_USE_HEVCDEC_SUPPORT := true
BOARD_USE_HEVCENC_SUPPORT := true
BOARD_USE_HEVC_HWIP := false
BOARD_USE_VP9DEC_SUPPORT := false
BOARD_USE_VP9ENC_SUPPORT := false
BOARD_USE_CUSTOM_COMPONENT_SUPPORT := true
BOARD_USE_VIDEO_EXT_FOR_WFD_HDCP := true
BOARD_USE_SINGLE_PLANE_IN_DRM := true

# HWComposer
BOARD_USES_VPP := true
BOARD_HDMI_INCAPABLE := true

# LIBHWJPEG
TARGET_USES_UNIVERSAL_LIBHWJPEG := true

# FIMG2D
BOARD_USES_SKIA_FIMGAPI := true
BOARD_USES_FIMGAPI_V5X := true

# SCALER
BOARD_USES_DEFAULT_CSC_HW_SCALER := true
BOARD_USES_DT := true
BOARD_USES_SCALER_M2M1SHOT := true

# WiFiDisplay
BOARD_USES_VIRTUAL_DISPLAY_DECON_EXT_WB := false
BOARD_USE_VIDEO_EXT_FOR_WFD_DRM := false
BOARD_USES_VDS_BGRA8888 := true
BOARD_VIRTUAL_DISPLAY_DISABLE_IDMA_G0 := false
endif

# Wifi
TARGET_USES_64_BIT_BCMDHD        := true
BOARD_WLAN_DEVICE                := bcmdhd
WPA_SUPPLICANT_VERSION           := VER_0_8_X
WPA_SUPPLICANT_USE_HIDL          := true
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_bcmdhd
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA          := "/system/vendor/etc/wifi/bcmdhd_sta.bin"
WIFI_DRIVER_FW_PATH_AP           := "/system/vendor/etc/wifi/bcmdhd_apsta.bin"
WIFI_BAND                        := 802_11_ABG

# WIFI_DRIVER_NVRAM_PATH_PARAM     := "/sys/module/dhd/parameters/nvram_path"
# WIFI_DRIVER_NVRAM_PATH           := "/system/vendor/etc/wifi/nvram_net.txt"
# WIFI_DRIVER_MODULE_ARG           := "iface_name=wlan0"
# WIFI_DRIVER_OPERSTATE_PATH       := "/sys/class/net/wlan0/operstate"

# Wifi Macloader
BOARD_HAVE_SAMSUNG_WIFI := true

# Networking
TARGET_NEEDS_NETD_DIRECT_CONNECT_RULE := true

# Charger
WITH_LINEAGE_CHARGER := false
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_SHOW_PERCENTAGE := true
CHARGING_ENABLED_PATH := /sys/class/power_supply/battery/batt_lp_charging

# Healthd
RED_LED_PATH := "/sys/class/leds/led_r/brightness"
GREEN_LED_PATH := "/sys/class/leds/led_g/brightness"
BLUE_LED_PATH := "/sys/class/leds/led_b/brightness"
BACKLIGHT_PATH := "/sys/class/backlight/panel/brightness"

# RIL
BOARD_VENDOR := samsung
BOARD_MODEM_TYPE := ss333
BOARD_PROVIDES_LIBRIL := true
ENABLE_VENDOR_RIL_SERVICE := true

# RIL.java overwrite
BOARD_RIL_CLASS := ../../../$(LOCAL_PATH)/ril

# Boot animation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true
TARGET_SCREEN_HEIGHT := 2048
TARGET_SCREEN_WIDTH := 1536

# Init
TARGET_INIT_VENDOR_LIB := libinit_sec

# Properties
TARGET_SYSTEM_PROP := device/samsung/universal8895-common/system.prop

# Release tools
TARGET_RELEASETOOLS_EXTENSIONS := $(LOCAL_PATH)/releasetools

# Recovery
#RECOVERY_VARIANT := twrp
BOARD_HAS_DOWNLOAD_MODE := true
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/ramdisk/fstab.samsungexynos8895

# Recovery (TWRP)
ifneq ($(strip $(wildcard $(TOP)/bootable/recovery/variables.h)),)
-include $(LOCAL_PATH)/twrp.mk
endif

#ifeq ($(HOST_OS),linux)
#    ifneq ($(TARGET_BUILD_VARIANT),eng)
#        ifeq ($(WITH_DEXPREOPT),)
#            WITH_DEXPREOPT := true
#            WITH_DEXPREOPT_BOOT_IMG_AND_SYSTEM_SERVER_ONLY ?= true
#        endif
#    endif
#endif

# Enable Dex Pre-opt
WITH_DEXPREOPT := true
# Don't dex preopt apps to avoid I/O congestion due to paging larger sized
# pre-compiled .odex files as opposed to background generated interpret-only odex files.
WITH_DEXPREOPT_BOOT_IMG_AND_SYSTEM_SERVER_ONLY := true

# Hidl
DEVICE_MANIFEST_FILE := device/samsung/universal8895-common/manifest.xml

# Sensors
TARGET_NO_SENSOR_PERMISSION_CHECK := true

#TARGET_PROCESS_SDK_VERSION_OVERRIDE += \
#    /system/bin/mediaserver=24 \
#    /system/vendor/bin/hw/rild=27

# Don't compile SystemUITests
EXCLUDE_SYSTEMUI_TESTS := true

# Security
VENDOR_SECURITY_PATCH := 2019-08-12

# Seccomp filters
BOARD_SECCOMP_POLICY += device/samsung/universal8895-common/seccomp

# SELinux
#BOARD_SEPOLICY_DIRS += device/samsung/universal8895-common/sepolicy

# DT2W
TARGET_TAP_TO_WAKE_NODE := "/sys/android_touch/doubletap2wake"

# SHIMS
TARGET_LD_SHIM_LIBS += \
    /system/vendor/lib/libbauthserver.so|/vendor/lib/libbauthtzcommon_shim.so \
    /system/vendor/lib64/libbauthserver.so|/vendor/lib64/libbauthtzcommon_shim.so

# SHIMS gpsd
TARGET_LD_SHIM_LIBS += \
    /system/vendor/bin/gpsd|/vendor/lib64/libsensor_shim.so

# SHIMS libGLES old
#TARGET_LD_SHIM_LIBS += \
#    /system/vendor/lib/egl/libGLES_mali.so|/vendor/lib/libprocname.so \
#    /system/vendor/lib64/egl/libGLES_mali.so|/vendor/lib64/libprocname.so

# SHIMS libexynoscamera
TARGET_LD_SHIM_LIBS += \
    /system/lib/libexynoscamera.so|/vendor/lib/libexynoscamera_shim.so \
    /system/lib64/libexynoscamera.so|/vendor/lib64/libexynoscamera_shim.so

# SHIMS camera exynos
#TARGET_LD_SHIM_LIBS += \
#    /system/lib/libstagefright.so|/vendor/lib/libstagefright_shim.so \
#    /system/lib64/libstagefright.so|/vendor/lib64/libstagefright_shim.so \
#    /system/lib/libcamera_client.so|/vendor/lib/libcamera_client_shim.so \
#    /system/lib64/libcamera_client.so|/vendor/lib64/libcamera_client_shim.so

# OMX SHIMS libui
TARGET_LD_SHIM_LIBS += \
    /system/lib/omx/libOMX.Exynos.AVC.Decoder.so|/vendor/lib/libui_shim.so \
    /system/lib64/omx/libOMX.Exynos.AVC.Decoder.so|/vendor/lib64/libui_shim.so \
    /system/lib/omx/libOMX.Exynos.AVC.Encoder.so|/vendor/lib/libui_shim.so \
    /system/lib64/omx/libOMX.Exynos.AVC.Encoder.so|/vendor/lib64/libui_shim.so \
    /system/lib/omx/libOMX.Exynos.HEVC.Decoder.so|/vendor/lib/libui_shim.so \
    /system/lib64/omx/libOMX.Exynos.HEVC.Decoder.so|/vendor/lib64/libui_shim.so \
    /system/lib/omx/libOMX.Exynos.HEVC.Encoder.so|/vendor/lib/libui_shim.so \
    /system/lib64/omx/libOMX.Exynos.HEVC.Encoder.so|/vendor/lib64/libui_shim.so \
    /system/lib/omx/libOMX.Exynos.MPEG4.Decoder.so|/vendor/lib/libui_shim.so \
    /system/lib64/omx/libOMX.Exynos.MPEG4.Decoder.so|/vendor/lib64/libui_shim.so \
    /system/lib/omx/libOMX.Exynos.MPEG4.Encoder.so|/vendor/lib/libui_shim.so \
    /system/lib64/omx/libOMX.Exynos.MPEG4.Encoder.so|/vendor/lib64/libui_shim.so \
    /system/lib/omx/libOMX.Exynos.VP8.Decoder.so|/vendor/lib/libui_shim.so \
    /system/lib64/omx/libOMX.Exynos.VP8.Decoder.so|/vendor/lib64/libui_shim.so \
    /system/lib/omx/libOMX.Exynos.VP8.Encoder.so|/vendor/lib/libui_shim.so \
    /system/lib64/omx/libOMX.Exynos.VP8.Encoder.so|/vendor/lib64/libui_shim.so \
    /system/lib/omx/libOMX.Exynos.VP9.Decoder.so|/vendor/lib/libui_shim.so \
    /system/lib64/omx/libOMX.Exynos.VP9.Decoder.so|/vendor/lib64/libui_shim.so \
    /system/lib/omx/libOMX.Exynos.WMV.Decoder.so|/vendor/lib/libui_shim.so \
    /system/lib64/omx/libOMX.Exynos.WMV.Decoder.so|/vendor/lib64/libui_shim.so

# Shim mpeg2 decoder libui
TARGET_LD_SHIM_LIBS += \
    /system/lib/omx/libOMX.Exynos.MPEG2.Decoder.so|/vendor/lib/libui_shim.so \
    /system/lib64/omx/libOMX.Exynos.MPEG2.Decoder.so|/vendor/lib64/libui_shim.so

# OMX SHIMS libstagefright
#TARGET_LD_SHIM_LIBS += \
#    /system/lib/omx/libOMX.Exynos.AVC.Decoder.so|/vendor/lib/libstagefright_shim.so \
#    /system/lib64/omx/libOMX.Exynos.AVC.Decoder.so|/vendor/lib64/libstagefright_shim.so \
#    /system/lib/omx/libOMX.Exynos.AVC.Encoder.so|/vendor/lib/libstagefright_shim.so \
#    /system/lib64/omx/libOMX.Exynos.AVC.Encoder.so|/vendor/lib64/libstagefright_shim.so \
#    /system/lib/omx/libOMX.Exynos.HEVC.Decoder.so|/vendor/lib/libstagefright_shim.so \
#    /system/lib64/omx/libOMX.Exynos.HEVC.Decoder.so|/vendor/lib64/libstagefright_shim.so \
#    /system/lib/omx/libOMX.Exynos.HEVC.Encoder.so|/vendor/lib/libstagefright_shim.so \
#    /system/lib64/omx/libOMX.Exynos.HEVC.Encoder.so|/vendor/lib64/libstagefright_shim.so \
#    /system/lib/omx/libOMX.Exynos.MPEG4.Decoder.so|/vendor/lib/libstagefright_shim.so \
#    /system/lib64/omx/libOMX.Exynos.MPEG4.Decoder.so|/vendor/lib64/libstagefright_shim.so \
#    /system/lib/omx/libOMX.Exynos.MPEG4.Encoder.so|/vendor/lib/libstagefright_shim.so \
#    /system/lib64/omx/libOMX.Exynos.MPEG4.Encoder.so|/vendor/lib64/libstagefright_shim.so \
#    /system/lib/omx/libOMX.Exynos.VP8.Decoder.so|/vendor/lib/libstagefright_shim.so \
#    /system/lib64/omx/libOMX.Exynos.VP8.Decoder.so|/vendor/lib64/libstagefright_shim.so \
#    /system/lib/omx/libOMX.Exynos.VP8.Encoder.so|/vendor/lib/libstagefright_shim.so \
#    /system/lib64/omx/libOMX.Exynos.VP8.Encoder.so|/vendor/lib64/libstagefright_shim.so \
#    /system/lib/omx/libOMX.Exynos.VP9.Decoder.so|/vendor/lib/libstagefright_shim.so \
#    /system/lib64/omx/libOMX.Exynos.VP9.Decoder.so|/vendor/lib64/libstagefright_shim.so \
#    /system/lib/omx/libOMX.Exynos.WMV.Decoder.so|/vendor/lib/libstagefright_shim.so \
#    /system/lib64/omx/libOMX.Exynos.WMV.Decoder.so|/vendor/lib64/libstagefright_shim.so

# Shim mpeg2 decoder libstagefright
#TARGET_LD_SHIM_LIBS += \
#    /system/lib/omx/libOMX.Exynos.MPEG2.Decoder.so|/vendor/lib/libstagefright_shim.so \
#    /system/lib64/omx/libOMX.Exynos.MPEG2.Decoder.so|/vendor/lib64/libstagefright_shim.so
