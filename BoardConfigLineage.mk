# Common board config for taimen, walleye

# Audio
BOARD_SUPPORTS_SOUND_TRIGGER := true

# Kernel
BOARD_KERNEL_IMAGE_NAME := Image.lz4-dtb
TARGET_COMPILE_WITH_MSM_KERNEL := true
TARGET_KERNEL_ADDITIONAL_FLAGS := \
    DTC=$(shell pwd)/prebuilts/misc/$(HOST_OS)-x86/dtc/dtc \
    MKDTIMG=$(shell pwd)/prebuilts/misc/$(HOST_OS)-x86/libufdt/mkdtimg
TARGET_KERNEL_CLANG_COMPILE := true
TARGET_KERNEL_SOURCE := kernel/google/wahoo

# DTBO image
BOARD_PREBUILT_DTBOIMAGE := device/google/wahoo/kernel/$(TARGET_DEVICE)_dtbo.img

# Build vendor image
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_PARTITION_SIZE := 524288000

# Manifests
DEVICE_MANIFEST_FILE += device/google/wahoo/lineage_manifest.xml
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += device/google/wahoo/lineage_compatibility_matrix.xml

# Verified Boot
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --set_hashtree_disabled_flag
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 2
