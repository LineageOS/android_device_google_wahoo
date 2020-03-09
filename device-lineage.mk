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
