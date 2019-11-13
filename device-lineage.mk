# Camera
PRODUCT_PACKAGES += \
    Snap

# EUICC
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.euicc.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/android.hardware.telephony.euicc.xml

# IMS
PRODUCT_PACKAGES += \
    PresencePolling \
    RcsService

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/google/wahoo/overlay-lineage

# Shared java libs
PRODUCT_PACKAGES += \
    com.android.nfc_extras
