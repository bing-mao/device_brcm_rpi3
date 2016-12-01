$(call inherit-product, build/target/product/generic_no_telephony.mk)

PRODUCT_NAME := rpi3
PRODUCT_DEVICE := rpi3
PRODUCT_BRAND := Android
PRODUCT_MODEL := Raspberry Pi 3
PRODUCT_MANUFACTURER := brcm

PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := ldpi
# A list of dpis to select prebuilt apk, in precedence order.
PRODUCT_AAPT_PREBUILT_DPI := mdpi ldpi

include frameworks/native/build/phone-hdpi-512-dalvik-heap.mk

PRODUCT_PACKAGES += \
    libGLES_android \
    wpa_supplicant \
    wpa_supplicant.conf \
    Launcher2 \
    LeanbackLauncher \
    Settings \
    Browser2

PRODUCT_COPY_FILES := \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/av/media/libeffects/data/audio_effects.conf:system/etc/audio_effects.conf \
    device/generic/goldfish/camera/media_profiles.xml:system/etc/media_profiles.xml \
    device/generic/goldfish/camera/media_codecs.xml:system/etc/media_codecs.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
    $(LOCAL_PATH)/rpi3_core_hardware.xml:system/etc/permissions/rpi3_core_hardware.xml \
    $(LOCAL_PATH)/init.rpi3.rc:root/init.rpi3.rc \
    $(LOCAL_PATH)/init.usb.rc:root/init.usb.rc \
    $(LOCAL_PATH)/ueventd.rpi3.rc:root/ueventd.rpi3.rc \
    $(LOCAL_PATH)/fstab.rpi3:root/fstab.rpi3 \
    $(LOCAL_PATH)/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/Generic.kl:system/usr/keylayout/Generic.kl \
    $(LOCAL_PATH)/firmware/brcm/brcmfmac43430-sdio.bin:root/lib/firmware/brcm/brcmfmac43430-sdio.bin \
    $(LOCAL_PATH)/firmware/brcm/brcmfmac43430-sdio.txt:root/lib/firmware/brcm/brcmfmac43430-sdio.txt \
    $(LOCAL_PATH)/firmware/brcm/BCM43430A1.hcd:root/lib/firmware/brcm/BCM43430A1.hcd \
    $(LOCAL_PATH)/bluetooth/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf \
    hardware/broadcom/wlan/bcmdhd/config/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
    $(LOCAL_PATH)/ADS7846_Touchscreen.idc:system/usr/idc/ADS7846_Touchscreen.idc \
    $(PRODUCT_COPY_FILES)

PRODUCT_COPY_FILES := \
    $(LOCAL_PATH)/aplogd:system/bin/aplogd \
    $(LOCAL_PATH)/aplogcat:system/bin/aplogcat \
    $(PRODUCT_COPY_FILES)

DEVICE_PACKAGE_OVERLAYS := device/brcm/rpi3/overlay
PRODUCT_LOCALES := en_US,ko_KR,ja_JP,zh_CN,hi_IN,en_GB,de_DE,fr_FR,it_IT,ru_RU,es_ES,pt_PT

PRODUCT_PACKAGES += \
    mtg_mce

NUMBER_FAMILY_RESERVED_FIXED_OIDS := 5
CHILD_LIST_ELEMENTS_PER_BLOCK     := 10
MAX_CHILDREN_PER_PARENT           := 1000
MAXIMUM_ATTRIBUTES_PER_READ       := 200
DEFAULT_ATTR_COUNT                := 50
NUMBER_DL_REGISTRY_ENTRIES        := 3
MAX_MSTP_TRUNK                    := 20
LOG_MAX_BUFSIZE                   := 5000
EVENT_LOG_MAX_BUFSIZE             := 500
FC_BUS_PORT_NUMBER                := 1
SA_BUS_PORT_NUMBER                := 2
CPU_USAGE_SMOOTHING_CONSTANT      := 0.01f
DESCRIPTION_LENGTH                := 161
INCLUDE_SUPPORT_SCHEDULE_CLASS    := true
INCLUDE_LOCAL_TIME                := true
USE_DOUBLE                        := true
MTG_FAMILY                        := true
LARGE_MEMORY_BLOCKS               := true
ROUTER                            := true
INCLUDE_BACNET_SEGMENTATION       := true
INCLUDE_DELETE_OBJECT_SUPPORT     := true
OE_CALL                           := true
APP_CALL                          := true
STRING_HEAP_STORAGE               := true
DICTIONARY                        := true
INCLUDE_VIEW_TABLE                := true
INCLUDE_MSEA_NAV_TREE_CACHE       := true
INCLUDE_STORED_STDOBJ_BACOID      := true
INCLUDE_DEFAULT_ATTR_SUPPORT      := true
INCLUDE_WRITE_NAME_SUPPORT        := true
INCLUDE_PEER_COMMUNICATION        := true
INCLUDE_MIN_MAX_RANGE_CHECKS      := true
INCLUDE_PLATFORM_INTEGRATION_SUPPORT        := true
INCLUDE_MARK_FIRST_WRITE_FAIL_ON_CREATE     := true
INCLUDE_BACNET_BACKUP_RESTORE     := true
INCLUDE_MSTP_MASTER               := true
INCLUDE_BACNET_TIME_MASTER        := true
OVERLOAD_OS_APIS                  := true
INCLUDE_CLASS_DATA_LOAD_BY_PRODUCT          := true
USE_ALTERNATE_RESOURCE            := true
MSTP_START_TASK                   := true
INCLUDE_SEND_IAM_TO_EACH_DATALINK := true
WRITABLE_DEVICE_BACOID            := true
OS_MSTP_ACTIVE_NODE_TABLE_FEATURE := true
PERSISTENT_STORAGE_NOT_AVAILABLE  := true
DISABLE_TIME_ZONE_SYNC            := true
PASSWORD_NOT_ENCRYPTED            := true
INCLUDE_SITE_DEVICE_SUPPORT       := true
SITE_OBJECT_NOT_INCLUDED          := true
INCLUDE_ON_THE_FLY_PERSISTENCE    := true
INCLUDE_AES_GCM_ENCRYPTION        := true
INCLUDE_TRACE_STURCTURE           := true
SEGWAY_SUPPORTED                  := true
