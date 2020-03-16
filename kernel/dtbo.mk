# BOARD_CUSTOM_DTBOIMG_MK := device/google/wahoo/kernel/dtbo.mk

MKDTIMG := $(HOST_OUT_EXECUTABLES)/mkdtimg$(HOST_EXECUTABLE_SUFFIX)

KERNEL_OUT := $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ

ifeq ($(BOARD_CUSTOM_DTBOIMG_CFG),)
BOARD_CUSTOM_DTBOIMG_CFG := kernel/google/wahoo/arch/arm64/boot/dts/dtboimg.cfg
endif

define build-dtboimage-target
    $(call pretty,"Target dtbo image: $(BOARD_PREBUILT_DTBOIMAGE)")
    $(MKDTIMG) cfg_create $@ $(BOARD_CUSTOM_DTBOIMG_CFG) -d $(KERNEL_OUT)
    $(hide) chmod a+r $@
endef

$(BOARD_PREBUILT_DTBOIMAGE): $(MKDTIMG) $(INSTALLED_KERNEL_TARGET)
	$(build-dtboimage-target)
