# Blobs necessary for media effects

# media effects
PRODUCT_COPY_FILES +=  \
    vendor/telo/proprietary/common/vendor/media/LMspeed_508.emd:system/media/LMspeed_508.emd \
    vendor/telo/proprietary/common/vendor/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# video files
$(call inherit-product-if-exists, frameworks/base/data/videos/VideoPackage2.mk)
