# Generic product
PRODUCT_NAME := telo
PRODUCT_BRAND := telo
PRODUCT_DEVICE := generic

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false

# Launcher3 supported devices
ifneq ($(filter telo_hammerhead,$(TARGET_PRODUCT)),)
PRODUCT_PACKAGES += \
    Launcher3
endif

# STK: overlay common to all devices with telephony
ifneq ($(filter telo_hammerhead,$(TARGET_PRODUCT)),)
# Build SimToolKit
PRODUCT_PACKAGES += \
    Stk
endif
    
# Latin IME lib
PRODUCT_COPY_FILES += \
    vendor/telo/proprietary/common/system/lib/libjni_latinime.so:system/lib/libjni_latinime.so
    
# Enable SIP+VoIP
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml
        
# APN
PRODUCT_COPY_FILES += \
    vendor/telo/proprietary/common/system/etc/apns-conf.xml:system/etc/apns-conf.xml
    
# SU Support
PRODUCT_COPY_FILES += \
    vendor/telo/proprietary/common/system/bin/su:system/xbin/daemonsu \
    vendor/telo/proprietary/common/system/bin/su:system/xbin/su \
    vendor/telo/proprietary/common/system/etc/init.d/99SuperSUDaemon:system/etc/init.d/99SuperSUDaemon \
    vendor/telo/proprietary/common/system/apk/Superuser.apk:system/app/Superuser.apk \
    vendor/telo/proprietary/common/system/etc/install-recovery.sh:system/etc/install-recovery.sh
