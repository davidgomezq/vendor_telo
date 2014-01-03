# Inherit AOSP device configuration for hammerhead.
$(call inherit-product, device/lge/hammerhead/full_hammerhead.mk)

# Inherit common product files.
$(call inherit-product, vendor/telo/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := telo_hammerhead
PRODUCT_BRAND := google
PRODUCT_DEVICE := hammerhead
PRODUCT_MODEL := Nexus 5
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=hammerhead \
    BUILD_FINGERPRINT=google/hammerhead/hammerhead:4.4.2/KOT49H/937116:user/release-keys \
    PRIVATE_BUILD_DESC="hammerhead-user 4.4.2 KOT49H 937116 release-keys"

# Inherit media effect blobs
-include vendor/telo/products/common_media_effects.mk

# boot animation
PRODUCT_COPY_FILES += \
    vendor/telo/proprietary/hammerhead/system/media/bootanimation.zip:system/media/bootanimation.zip
