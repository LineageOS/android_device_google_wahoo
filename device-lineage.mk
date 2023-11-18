# Elmyra
PRODUCT_PACKAGES += \
    ElmyraService

# GMS
ifeq ($(WITH_GMS),true)
GMS_MAKEFILE=gms_minimal.mk
WITH_GMS_COMMS_SUITE := false
endif

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/google/wahoo/overlay-lineage

# Parts
PRODUCT_PACKAGES += \
    GoogleParts

# Trust HAL
PRODUCT_PACKAGES += \
    vendor.lineage.trust@1.0-service
