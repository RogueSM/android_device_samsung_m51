#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

BOARD_VENDOR := samsung
DEVICE_PATH := device/samsung/m51
ALLOW_MISSING_DEPENDENCIES=true

# Platform
BOARD_VENDOR := samsung
TARGET_BOARD_PLATFORM := sm6150
TARGET_BOARD_PLATFORM_GPU := qcom-adreno618

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-2a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a76

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a76

TARGET_USES_64_BIT_BINDER := true

BOARD_USES_QCOM_HARDWARE := true

# APEX
DEXPREOPT_GENERATE_APEX_IMAGE := true

# Audio
USE_XML_AUDIO_POLICY_CONF := 1
USE_CUSTOM_AUDIO_POLICY := 1
USE_XML_AUDIO_POLICY_CONF := 1

# FM
BOARD_HAS_QCA_FM_SOC := "cherokee"
BOARD_HAVE_QCOM_FM := true
AUDIO_FEATURE_ENABLED_FM_POWER_OPT := true
TARGET_QCOM_NO_FM_FIRMWARE := true

# DRM
TARGET_ENABLE_MEDIADRM_64 := true

# DPM
BOARD_USES_DPM := true

# RenderScript
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth
BOARD_HAVE_BLUETOOTH_QCOM := true

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := sm6150

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true

# HIDL
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/framework_manifest.xml

# Kernel
TARGET_KERNEL_ARCH := arm64
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/dtb/m51.dtb
BOARD_PREBUILT_DTBIMAGE_DIR := $(DEVICE_PATH)/prebuilt/dtb
TARGET_KERNEL_SOURCE := kernel/samsung/m51
TARGET_KERNEL_CONFIG := m51_defconfig
TARGET_KERNEL_CLANG_COMPILE := true
BOARD_KERNEL_IMAGE_NAME := Image.gz
#BOARD_KERNEL_SEPARATED_DTBO := true
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
#TARGET_KERNEL_CLANG_PATH := /home/hesham/data/llvm8/toolchains/llvm-Snapdragon_LLVM_for_Android_8.0/prebuilt/linux-x86_64
#TARGET_KERNEL_CLANG_VERSION := 8

# Boot
BOARD_BOOT_HEADER_VERSION := 2
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_CMDLINE := console=ttyMSM0,115200n8 androidboot.console=ttyMSM0 androidboot.hardware=qcom androidboot.memcg=1 
BOARD_KERNEL_CMDLINE += lpm_levels.sleep_disabled=1 video=vfb:640x400,bpp=32,memsize=3072000 msm_rtb.filter=0x237 
BOARD_KERNEL_CMDLINE += service_locator.enable=1 swiotlb=1 androidboot.usbcontroller=a600000.dwc3 
BOARD_KERNEL_CMDLINE += firmware_class.path=/vendor/firmware_mnt/image nokaslr printk.devkmsg=on androidboot.selinux=permissive 
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET := 0x02000000
BOARD_KERNEL_SECOND_OFFSET := 0x00f00000
BOARD_KERNEL_TAGS_OFFSET := 0x01e00000
BOARD_DTB_OFFSET := 0x01f00000
BOARD_MKBOOTIMG_ARGS := --kernel_offset $(BOARD_KERNEL_OFFSET) --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --dtb_offset $(BOARD_DTB_OFFSET) 
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET) --second_offset $(BOARD_KERNEL_SECOND_OFFSET) --header_version $(BOARD_BOOT_HEADER_VERSION)
BOARD_MKBOOTIMG_ARGS += --pagesize $(BOARD_KERNEL_PAGESIZE) --board "sm6150" --dtb $(TARGET_PREBUILT_DTB)

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864 
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 82726912 
BOARD_DTBOIMG_PARTITION_SIZE := 0x0800000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 19327352832
BOARD_CACHEIMAGE_PARTITION_SIZE := 419430400
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEMIMAGE_PARTITION_RESERVED_SIZE := 2147483648

BOARD_SUPER_PARTITION_SIZE := 8053063680 
BOARD_SUPER_PARTITION_GROUPS := samsung_dynamic_partitions 
BOARD_SAMSUNG_DYNAMIC_PARTITIONS_SIZE := 8048869376
BOARD_SAMSUNG_DYNAMIC_PARTITIONS_PARTITION_LIST := system product

TARGET_COPY_OUT_VENDOR := vendor
TARGET_COPY_OUT_PRODUCT := product
BUILD_WITHOUT_VENDOR := true 

# Root
TARGET_FS_CONFIG_GEN := $(DEVICE_PATH)/config.fs
BOARD_ROOT_EXTRA_FOLDERS := \
    carrier \
    dqmdbg \
    efs \
    keydata \
    keyrefuge \
    metadata \
    optics \
    prism \
    spu \
    omr

# Recovery
BOARD_HAS_DOWNLOAD_MODE := true
BOARD_INCLUDE_RECOVERY_DTBO := true
BOARD_USES_RECOVERY_AS_BOOT := false
TARGET_NO_RECOVERY := false
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/root/recovery.fstab
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USES_MKE2FS := true

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := $(DEVICE_PATH)/releasetools

# SELinux
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/qcom/sepolicy/qva/private \
    device/qcom/sepolicy/generic/private \
    device/samsung_slsi/sepolicy/common/private \
    $(DEVICE_PATH)/sepolicy/private

BOARD_PLAT_PUBLIC_SEPOLICY_DIR += \
    device/qcom/sepolicy/generic/public \
    device/qcom/sepolicy/qva/public \
    device/samsung_slsi/sepolicy/common/public

PRODUCT_PUBLIC_SEPOLICY_DIRS += \
    device/qcom/sepolicy/product/public

PRODUCT_PRIVATE_SEPOLICY_DIRS += \
    device/qcom/sepolicy/product/private

BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor


# Verified Boot
BOARD_AVB_ENABLE := true
BOARD_AVB_ROLLBACK_INDEX := 0
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3

# Properties
BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := true
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop
TARGET_PRODUCT_PROP += $(DEVICE_PATH)/product.prop

# Security
#VENDOR_SECURITY_PATCH := 2020-11-01

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += $(DEVICE_PATH)

# Face unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# Screen HDR
TARGET_HAS_HDR_DISPLAY := true

# Treble
BOARD_VNDK_VERSION := current

# Graphics
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024
TARGET_USES_DRM_PP := true
TARGET_USES_GRALLOC1 := true
TARGET_USES_HWC2 := true
TARGET_USES_ION := true
TARGET_USES_NEW_ION_API :=true
TARGET_USES_QCOM_BSP := false
TARGET_PLATFORM_DEVICE_BASE := /devices/soc.0/
TARGET_USES_QTI_MAPPER_2_0 := true
TARGET_USES_QTI_MAPPER_EXTENSIONS_1_1 := true

# Media
TARGET_DISABLED_UBWC := true
TARGET_USES_MEDIA_EXTENSIONS := true

#Enable PD locater/notifier
TARGET_PD_SERVICE_ENABLED := true

#Enable peripheral manager
TARGET_PER_MGR_ENABLED := true

# Enable sensor multi HAL
USE_SENSOR_MULTI_HAL := true

# Enable sensor Version V_2
USE_SENSOR_HAL_VER := 2.0

#Enable LM
TARGET_USES_LM := true

# Enable QG user space
PMIC_QG_SUPPORT := true

# inherit from the proprietary version
-include vendor/samsung/m51/BoardConfigVendor.mk

