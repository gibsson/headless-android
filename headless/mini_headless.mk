# Copyright (C) 2012 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# from device/generic/armv7-a-neon/mini_common.mk
# add all configurations
PRODUCT_AAPT_CONFIG := normal ldpi mdpi hdpi xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# en_US only
PRODUCT_LOCALES := en_US

PRODUCT_PACKAGES += \
    Bluetooth \
    FusedLocation \
    InputDevices \
    Keyguard \
    LatinIME \
    Phone \
    PrintSpooler \
    Provision \
    Settings \
    SystemUI \
    TestingCamera \
    WAPPushManager \
    apache-xml \
    audio \
    audio_policy.default \
    audio.primary.default \
    bouncycastle \
    cacerts \
    com.android.future.usb.accessory \
    conscrypt \
    core \
    core-junit \
    dalvikvm \
    dexdeps \
    dexdump \
    dexlist \
    dexopt \
    dmtracedump \
    dx \
    ext \
    hostapd \
    hprof-conv \
    libcrypto \
    libdvm \
    libexpat \
    libicui18n \
    libicuuc \
    libjavacore \
    libnativehelper \
    librs_jni \
    libssl \
    libvideoeditor_core \
    libvideoeditor_jni \
    libvideoeditor_osal \
    libvideoeditorplayer \
    libvideoeditor_videofilters \
    libz \
    lint \
    local_time.default \
    network \
    okhttp \
    pand \
    power.default \
    sdptool \
    wpa_supplicant.conf

# This is not necessary for mini, but is for mini-emulator as it should
# be included in platform.zip
PRODUCT_PACKAGES += camera.goldfish.jpeg

PRODUCT_COPY_FILES += \
    frameworks/av/media/libeffects/data/audio_effects.conf:system/etc/audio_effects.conf \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \

PRODUCT_PROPERTY_OVERRIDES += \
    ro.carrier=unknown \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.config.ringtone=Ring_Synth_04.ogg \
    ro.config.notification_sound=pixiedust.ogg

# from build/target/product/core_base.mk
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.notification_sound=OnTheHunt.ogg \
    ro.config.alarm_alert=Alarm_Classic.ogg

PRODUCT_PACKAGES += \
    ContactsProvider \
    DefaultContainerService \
    Home \
    TelephonyProvider \
    UserDictionaryProvider \
    atrace \
    libandroidfw \
    libaudiopreprocessing \
    libaudioutils \
    libbcc \
    libfilterpack_imageproc \
    libgabi++ \
    libkeystore \
    libmdnssd \
    libnfc_ndef \
    libportable \
    libpowermanager \
    libspeexresampler \
    libstagefright_chromium_http \
    libstagefright_soft_aacdec \
    libstagefright_soft_aacenc \
    libstagefright_soft_amrdec \
    libstagefright_soft_amrnbenc \
    libstagefright_soft_amrwbenc \
    libstagefright_soft_flacenc \
    libstagefright_soft_g711dec \
    libstagefright_soft_gsmdec \
    libstagefright_soft_h264dec \
    libstagefright_soft_h264enc \
    libstagefright_soft_mp3dec \
    libstagefright_soft_mpeg4dec \
    libstagefright_soft_mpeg4enc \
    libstagefright_soft_rawdec \
    libstagefright_soft_vorbisdec \
    libstagefright_soft_vpxdec \
    libstagefright_soft_vpxenc \
    libvariablespeed \
    libwebrtc_audio_preprocessing \
    mdnsd \
    mms-common \
    requestsync \
    screenrecord \
    telephony-common \
    voip-common

# from build/target/product/core_minimal.mk
PRODUCT_PACKAGES += \
    BackupRestoreConfirmation \
    DownloadProvider \
    HTMLViewer \
    MediaProvider \
    PackageInstaller \
    SettingsProvider \
    Shell \
    bu \
    com.android.location.provider \
    com.android.location.provider.xml \
    drmserver \
    framework-res \
    installd \
    ip \
    ip-up-vpn \
    ip6tables \
    iptables \
    keystore \
    keystore.default \
    libOpenMAXAL \
    libOpenSLES \
    libdownmix \
    libdrmframework \
    libdrmframework_jni \
    libfilterfw \
    libsqlite_jni \
    libwilhelm \
    make_ext4fs \
    screencap \
    sensorservice \
    uiautomator

PRODUCT_BOOT_JARS := core:conscrypt:okhttp:core-junit:bouncycastle:ext:framework:framework2:android.policy:services:apache-xml:webviewchromium

PRODUCT_RUNTIMES := runtime_libdvm_default
PRODUCT_RUNTIMES += runtime_libart

# from build/target/product/base.mk
PRODUCT_PACKAGES += \
    20-dns.conf \
    95-configured \
    am \
    android.policy \
    android.test.runner \
    app_process \
    applypatch \
    bmgr \
    bugreport \
    content \
    dhcpcd \
    dhcpcd-run-hooks \
    dnsmasq \
    framework \
    fsck_msdos \
    ime \
    javax.obex \
    libSR_AudioIn \
    libandroid \
    libandroid_runtime \
    libandroid_servers \
    libaudioeffect_jni \
    libaudioflinger \
    libbundlewrapper \
    libcamera_client \
    libcameraservice \
    libdl \
    libeffectproxy \
    libeffects \
    libinput \
    libiprouteutil \
    libjni_latinime \
    libjnigraphics \
    libldnhncr \
    libmedia \
    libmedia_jni \
    libmediaplayerservice \
    libmtp \
    libnetlink \
    libnetutils \
    libpac \
    libreference-ril \
    libreverbwrapper \
    libril \
    librtp_jni \
    libsensorservice \
    libskia \
    libsonivox \
    libsoundpool \
    libsqlite \
    libstagefright \
    libstagefright_amrnb_common \
    libstagefright_avc_common \
    libstagefright_enc_common \
    libstagefright_foundation \
    libstagefright_omx \
    libstagefright_yuv \
    libusbhost \
    libutils \
    libvisualizer \
    libvorbisidec \
    libwpa_client \
    media \
    media_cmd \
    mediaserver \
    monkey \
    mtpd \
    ndc \
    netcfg \
    netd \
    ping \
    ping6 \
    platform.xml \
    pppd \
    pm \
    racoon \
    run-as \
    schedtest \
    screenshot \
    sdcard \
    services \
    settings \
    svc \
    tc \
    vdc \
    vold \
    webview \
    wm

# from build/target/product/embedded.mk
PRODUCT_PACKAGES += \
    adb \
    adbd \
    bootanimation \
    debuggerd \
    dumpstate \
    dumpsys \
    gralloc.default \
    gzip \
    healthd \
    init \
    init.environ.rc \
    init.rc \
    input \
    libEGL \
    libETC1 \
    libFFTEm \
    libGLES_android \
    libGLESv1_CM \
    libGLESv2 \
    libbinder \
    libc \
    libctest \
    libcutils \
    libdl \
    libgui \
    libhardware \
    libhardware_legacy \
    libjpeg \
    liblog \
    libm \
    libpixelflinger \
    libpower \
    libstdc++ \
    libstlport \
    libsurfaceflinger \
    libsurfaceflinger_ddmconnection \
    libsysutils \
    libthread_db \
    libui \
    libutils \
    linker \
    logcat \
    logwrapper \
    reboot \
    service \
    servicemanager \
    surfaceflinger \
    toolbox

# SELinux packages
PRODUCT_PACKAGES += \
    sepolicy \
    file_contexts \
    seapp_contexts \
    property_contexts \
    mac_permissions.xml

PRODUCT_COPY_FILES += \
    system/core/rootdir/init.usb.rc:root/init.usb.rc \
    system/core/rootdir/init.trace.rc:root/init.trace.rc \
    system/core/rootdir/ueventd.rc:root/ueventd.rc \
    system/core/rootdir/etc/hosts:system/etc/hosts

$(call inherit-product-if-exists, frameworks/webview/chromium/chromium.mk)
$(call inherit-product-if-exists, frameworks/base/data/keyboards/keyboards.mk)
$(call inherit-product-if-exists, frameworks/base/data/fonts/fonts.mk)
$(call inherit-product-if-exists, frameworks/base/data/sounds/AudioPackage5.mk)

# default is nosdcard, S/W button enabled in resource
DEVICE_PACKAGE_OVERLAYS := device/generic/armv7-a-neon/overlay
PRODUCT_CHARACTERISTICS := nosdcard

# common stuffs across mini_emulators
PRODUCT_PACKAGES += \
    audio.primary.goldfish \
    camera.goldfish \
    gps.goldfish \
    gralloc.goldfish \
    lights.goldfish \
    power.goldfish \
    sensors.goldfish \
    qemu-props \
    qemud \
    libGLESv1_CM_emulation \
    lib_renderControl_enc \
    libEGL_emulation \
    libGLESv2_enc \
    libOpenglSystemCommon \
    libGLESv2_emulation \
    libGLESv1_enc \
    rild

PRODUCT_COPY_FILES += \
    device/adeneo/headless/init.goldfish.rc:root/init.goldfish.rc \
    device/generic/goldfish/init.goldfish.sh:system/etc/init.goldfish.sh \
    device/generic/goldfish/ueventd.goldfish.rc:root/ueventd.goldfish.rc \
    device/generic/goldfish/data/etc/apns-conf.xml:system/etc/apns-conf.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/av/media/libeffects/data/audio_effects.conf:system/etc/audio_effects.conf \
    hardware/libhardware_legacy/audio/audio_policy.conf:system/etc/audio_policy.conf \
    device/generic/goldfish/camera/media_profiles.xml:system/etc/media_profiles.xml \
    device/generic/goldfish/camera/media_codecs.xml:system/etc/media_codecs.xml \
    device/generic/goldfish/fstab.goldfish:root/fstab.goldfish

PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.headless=1

PRODUCT_NAME := mini_headless
PRODUCT_DEVICE := headless
PRODUCT_BRAND := Android
PRODUCT_MODEL := Headless Android

LOCAL_KERNEL := prebuilts/qemu-kernel/arm/kernel-qemu-armv7
PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel
