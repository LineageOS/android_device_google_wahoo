# Overlays
DEVICE_PACKAGE_OVERLAYS += device/google/wahoo/overlay-lineage

# EUICC feature
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.euicc.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.telephony.euicc.xml

# IMS
PRODUCT_PACKAGES += \
   com.android.ims.rcsmanager \
   RcsService \
   PresencePolling

# Force triple frame buffers
PRODUCT_PROPERTY_OVERRIDES += \
    ro.surface_flinger.max_frame_buffer_acquired_buffers=3

# Snap
PRODUCT_PACKAGES += \
    Snap

# Build vendor img
AB_OTA_PARTITIONS += \
    vendor

# Build necessary packages for vendor
PRODUCT_PACKAGES += \
    ese-ls-provision \
    ese-replay \
    libjson \
    libsensorndkbridge:32 \
    libtinyxml

# Add missing vendor props
PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    media.mediadrmservice.enable=true \
    ro.oem_unlock.pst_offset=6144 \
    ro.oem_unlock.pst=/dev/block/platform/soc/1da4000.ufshc/by-name/misc \
    ro.hardware.egl=adreno \
    ro.gfx.driver.0=com.google.pixel.wahoo.gfxdrv

# Setting vendor SPL
VENDOR_SECURITY_PATCH := "2019-08-01"

# MiFare Permissions file
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/com.nxp.mifare.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.nxp.mifare.xml
