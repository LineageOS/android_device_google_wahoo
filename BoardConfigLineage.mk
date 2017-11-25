# Common board config for taimen, walleye

# Kernel
BOARD_KERNEL_IMAGE_NAME := Image.lz4-dtb
TARGET_COMPILE_WITH_MSM_KERNEL := true
TARGET_KERNEL_CLANG_COMPILE := true
TARGET_KERNEL_SOURCE := kernel/google/wahoo
TARGET_NEEDS_DTBOIMAGE := true
