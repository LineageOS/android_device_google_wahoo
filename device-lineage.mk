# Build necessary packages for vendor
PRODUCT_PACKAGES += \
    chre \
    ese-ls-provision \
    ese-replay \
    libhidltransport.vendor \
    libhwbinder.vendor \
    libjson \
    libsensorndkbridge:32 \
    libtinyxml

# Camera
PRODUCT_PACKAGES += \
    Snap

# Enable missing props
PRODUCT_PRODUCT_PROPERTIES += \
    ro.opa.eligible_device=true

# Enable missing vendor props
PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    media.mediadrmservice.enable=true \
    ro.gfx.driver.0=com.google.pixel.wahoo.gfxdrv \
    ro.hardware.egl=adreno \
    ro.hardware.vulkan=adreno \
    ro.oem_unlock.pst=/dev/block/platform/soc/1da4000.ufshc/by-name/misc \
    ro.oem_unlock.pst_offset=6144

# EUICC
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.euicc.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/android.hardware.telephony.euicc.xml

# Force triple frame buffers
PRODUCT_PROPERTY_OVERRIDES += \
    ro.surface_flinger.max_frame_buffer_acquired_buffers=3

# IMS
PRODUCT_PACKAGES += \
    PresencePolling \
    RcsService

# MiFare Permissions file
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/com.nxp.mifare.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.nxp.mifare.xml

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/google/wahoo/overlay-lineage

# Setting vendor SPL
VENDOR_SECURITY_PATCH := "2020-10-05"

# Shared java libs
PRODUCT_PACKAGES += \
    com.android.nfc_extras

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    hardware/google/interfaces

# Trust HAL
PRODUCT_PACKAGES += \
    vendor.lineage.trust@1.0-service
