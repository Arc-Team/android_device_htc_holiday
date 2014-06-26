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
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Qualcomm scripts
PRODUCT_COPY_FILES += \
    device/htc/holiday/prebuilt/etc/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
    device/htc/holiday/prebuilt/etc/init.qcom.efs.sync.sh:system/etc/init.qcom.efs.sync.sh

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio_policy.msm8660 \
    audio.primary.msm8660 \
    audio.usb.default \
    libaudio-resampler \
    libaudioutils

# GPS
PRODUCT_COPY_FILES += \
    device/common/gps/gps.conf_US_SUPL:system/etc/gps.conf

# Graphics
PRODUCT_PACKAGES += \
    copybit.msm8660 \
    gralloc.msm8660 \
    hwcomposer.msm8660 \
    memtrack.msm8660 \
    lights.msm8660 \
    libgenlock \
    libmemalloc \
    liboverlay \
    libqdutils \
    libtilerenderer

# OMX
PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libdivxdrmdecrypt \
    libmm-omxcore \
    libOmxCore \
    libOmxVdec \
    libOmxVenc \
    libOmxAacEnc \
    libOmxAmrEnc \
    libstagefrighthw \
    libOmxQcelp13Enc \
    libOmxEvrcEnc \
    libOmxAmrEnc

# Camera
PRODUCT_PACKAGES += \
    camera.msm8660 \
    libsurfaceflinger_client

# Power
PRODUCT_PACKAGES += \
    power.msm8660

# Torch
PRODUCT_PACKAGES += \
    Torch

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Misc
PRODUCT_PACKAGES += \
    libnetcmdiface

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

# Media configuration
PRODUCT_COPY_FILES += \
    device/htc/holiday/prebuilt/etc/media_codecs.xml:system/etc/media_codecs.xml \
    device/htc/holiday/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml

# audio policy
PRODUCT_COPY_FILES += \
    device/htc/holiday/prebuilt/etc/audio_policy.conf:system/etc/audio_policy.conf

# MSM8660 firmware
PRODUCT_COPY_FILES += \
    device/htc/holiday/prebuilt/etc/firmware/leia_pfp_470.fw:system/etc/firmware/leia_pfp_470.fw \
    device/htc/holiday/prebuilt/etc/firmware/leia_pm4_470.fw:system/etc/firmware/leia_pm4_470.fw \
    device/htc/holiday/prebuilt/etc/firmware/vidc_1080p.fw:system/etc/firmware/vidc_1080p.fw


# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Device Properties
PRODUCT_PROPERTY_OVERRIDES += \
    com.qc.hardware=true \
    debug.enabletr=true \
    debug.egl.hw=1 \
    ro.ksm.default=1 \
    debug.mdpcomp.maxlayer=0 \
    debug.mdpcomp.logs=0 \
    debug.sf.hw=1 \
    dev.pm.dyn_samplingrate=1 \
    ro.opengles.version=131072 \
    ro.bq.gpu_to_cpu_unsupported=1 \
    debug.egl.recordable.rgba8888=1

# Boot ramdisk setup
PRODUCT_COPY_FILES += \
    device/htc/holiday/ramdisk/init.holiday.rc:root/init.holiday.rc \
    device/htc/holiday/ramdisk/init.holiday.usb.rc:root/init.holiday.usb.rc \
    device/htc/holiday/ramdisk/ueventd.holiday.rc:root/ueventd.holiday.rc \
    device/htc/holiday/ramdisk/fstab.holiday:root/fstab.holiday

# GPS
PRODUCT_PACKAGES += \
    gps.holiday

# Filesystem management tools
PRODUCT_PACKAGES += \
   e2fsck

# Bluetooth
$(call inherit-product, device/htc/holiday/bcm_hcd.mk)

# Wifi
$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/firmware/bcm4330/device-bcm.mk)

# HTC BT audio config
PRODUCT_COPY_FILES += device/htc/holiday/prebuilt/etc/AudioBTID.csv:system/etc/AudioBTID.csv

# configs
PRODUCT_COPY_FILES += \
    device/htc/holiday/prebuilt/etc/init.d/99kernel:system/etc/init.d/99kernel

# Sound DSP
PRODUCT_COPY_FILES += \
    device/htc/holiday/prebuilt/etc/A1026_CFG.csv:system/etc/A1026_CFG.csv \
    device/htc/holiday/prebuilt/etc/AdieHWCodec.csv:system/etc/AdieHWCodec.csv \
    device/htc/holiday/prebuilt/etc/AdieHWCodec_BEATS_HW.csv:system/etc/AdieHWCodec_BEATS_HW.csv \
    device/htc/holiday/prebuilt/etc/AIC3254_REG.csv:system/etc/AIC3254_REG.csv \
    device/htc/holiday/prebuilt/etc/AIC3254_REG_DualMic.csv:system/etc/AIC3254_REG_DualMic.csv \
    device/htc/holiday/prebuilt/etc/AIC3254_REG_DualMic.txt:system/etc/AIC3254_REG_DualMic.txt \
    device/htc/holiday/prebuilt/etc/AIC3254_REG_DualMic_WA.txt:system/etc/AIC3254_REG_DualMic_WA.txt \
    device/htc/holiday/prebuilt/etc/AIC3254_REG_DualMic_XD.csv:system/etc/AIC3254_REG_DualMic_XD.csv \
    device/htc/holiday/prebuilt/etc/CodecDSPID.txt:system/etc/CodecDSPID.txt \
    device/htc/holiday/prebuilt/etc/CodecDSPID_WA.txt:system/etc/CodecDSPID_WA.txt \
    device/htc/holiday/prebuilt/etc/CodecDSPID_WB.txt:system/etc/CodecDSPID_WB.txt \
    device/htc/holiday/prebuilt/etc/TPA2051_CFG.csv:system/etc/TPA2051_CFG.csv \
    device/htc/holiday/prebuilt/etc/TPA2051_CFG_BEATS_HW.csv:system/etc/TPA2051_CFG_BEATS_HW.csv \
    device/htc/holiday/prebuilt/etc/TPA2051_CFG_XC.csv:system/etc/TPA2051_CFG_XC.csv

# Sound Image DSP
PRODUCT_COPY_FILES += \
    device/htc/holiday/prebuilt/etc/soundimage/Sound_FM_HP.txt:system/etc/soundimage/Sound_FM_HP.txt \
    device/htc/holiday/prebuilt/etc/soundimage/Sound_FM_SPK.txt:system/etc/soundimage/Sound_FM_SPK.txt \
    device/htc/holiday/prebuilt/etc/soundimage/Sound_MFG.txt:system/etc/soundimage/Sound_MFG.txt \
    device/htc/holiday/prebuilt/etc/soundimage/Sound_Original.txt:system/etc/soundimage/Sound_Original.txt \
    device/htc/holiday/prebuilt/etc/soundimage/Sound_Original_MFG.txt:system/etc/soundimage/Sound_Original_MFG.txt \
    device/htc/holiday/prebuilt/etc/soundimage/Sound_Original_Recording.txt:system/etc/soundimage/Sound_Original_Recording.txt \
    device/htc/holiday/prebuilt/etc/soundimage/Sound_Original_SPK.txt:system/etc/soundimage/Sound_Original_SPK.txt \
    device/htc/holiday/prebuilt/etc/soundimage/Sound_Phone_Original.txt:system/etc/soundimage/Sound_Phone_Original.txt \
    device/htc/holiday/prebuilt/etc/soundimage/Sound_Phone_Original_HP.txt:system/etc/soundimage/Sound_Phone_Original_HP.txt \
    device/htc/holiday/prebuilt/etc/soundimage/Sound_Phone_Original_HP_WA.txt:system/etc/soundimage/Sound_Phone_Original_HP_WA.txt \
    device/htc/holiday/prebuilt/etc/soundimage/Sound_Phone_Original_HP_WB.txt:system/etc/soundimage/Sound_Phone_Original_HP_WB.txt \
    device/htc/holiday/prebuilt/etc/soundimage/Sound_Phone_Original_MFG.txt:system/etc/soundimage/Sound_Phone_Original_MFG.txt \
    device/htc/holiday/prebuilt/etc/soundimage/Sound_Phone_Original_MFG_WA.txt:system/etc/soundimage/Sound_Phone_Original_MFG_WA.txt \
    device/htc/holiday/prebuilt/etc/soundimage/Sound_Phone_Original_REC.txt:system/etc/soundimage/Sound_Phone_Original_REC.txt \
    device/htc/holiday/prebuilt/etc/soundimage/Sound_Phone_Original_REC_WA.txt:system/etc/soundimage/Sound_Phone_Original_REC_WA.txt \
    device/htc/holiday/prebuilt/etc/soundimage/Sound_Phone_Original_REC_WB.txt:system/etc/soundimage/Sound_Phone_Original_REC_WB.txt \
    device/htc/holiday/prebuilt/etc/soundimage/Sound_Phone_Original_SPK.txt:system/etc/soundimage/Sound_Phone_Original_SPK.txt \
    device/htc/holiday/prebuilt/etc/soundimage/Sound_Phone_Original_SPK_WA.txt:system/etc/soundimage/Sound_Phone_Original_SPK_WA.txt \
    device/htc/holiday/prebuilt/etc/soundimage/Sound_Phone_Original_SPK_WB.txt:system/etc/soundimage/Sound_Phone_Original_SPK_WB.txt \
    device/htc/holiday/prebuilt/etc/soundimage/Sound_Phone_Original_WA.txt:system/etc/soundimage/Sound_Phone_Original_WA.txt \
    device/htc/holiday/prebuilt/etc/soundimage/Sound_Rec_Landscape.txt:system/etc/soundimage/Sound_Rec_Landscape.txt \
    device/htc/holiday/prebuilt/etc/soundimage/Sound_Rec_mono.txt:system/etc/soundimage/Sound_Rec_mono.txt \
    device/htc/holiday/prebuilt/etc/soundimage/Sound_Rec_Portrait.txt:system/etc/soundimage/Sound_Rec_Portrait.txt \
    device/htc/holiday/prebuilt/etc/soundimage/Sound_Rec_Voice_record.txt:system/etc/soundimage/Sound_Rec_Voice_record.txt \
    device/htc/holiday/prebuilt/etc/soundimage/Sound_Recording.txt:system/etc/soundimage/Sound_Recording.txt \
    device/htc/holiday/prebuilt/etc/soundimage/srs_bypass.cfg:system/etc/soundimage/srs_bypass.cfg \
    device/htc/holiday/prebuilt/etc/soundimage/srs_geq10.cfg:system/etc/soundimage/srs_geq10.cfg \
    device/htc/holiday/prebuilt/etc/soundimage/srs_global.cfg:system/etc/soundimage/srs_global.cfg \
    device/htc/holiday/prebuilt/etc/soundimage/srsfx_trumedia_51.cfg:system/etc/soundimage/srsfx_trumedia_51.cfg \
    device/htc/holiday/prebuilt/etc/soundimage/srsfx_trumedia_movie.cfg:system/etc/soundimage/srsfx_trumedia_movie.cfg \
    device/htc/holiday/prebuilt/etc/soundimage/srsfx_trumedia_music.cfg:system/etc/soundimage/srsfx_trumedia_music.cfg \
    device/htc/holiday/prebuilt/etc/soundimage/srsfx_trumedia_music_wide.cfg:system/etc/soundimage/srsfx_trumedia_music_wide.cfg \
    device/htc/holiday/prebuilt/etc/soundimage/srsfx_trumedia_voice.cfg:system/etc/soundimage/srsfx_trumedia_voice.cfg

# Recovery
PRODUCT_COPY_FILES += \
    device/htc/holiday/recovery/init-cwm.rc:recovery/init.rc \
    device/htc/holiday/recovery/sbin/choice_fn:recovery/root/sbin/choice_fn \
    device/htc/holiday/recovery/sbin/detect_key:recovery/root/sbin/detect_key \
    device/htc/holiday/recovery/sbin/offmode_charging:recovery/root/sbin/offmode_charging \
    device/htc/holiday/recovery/sbin/htcbatt:recovery/root/sbin/htcbatt \
    device/htc/holiday/recovery/sbin/power_test:recovery/root/sbin/power_test

# Keylayouts and Keychars
PRODUCT_COPY_FILES += \
    device/htc/holiday/prebuilt/usr/keychars/holiday-keypad.kcm:system/usr/keychars/holiday-keypad.kcm \
    device/htc/holiday/prebuilt/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/htc/holiday/prebuilt/usr/keylayout/cy8c-touchscreen.kl:system/usr/keylayout/cy8c-touchscreen.kl \
    device/htc/holiday/prebuilt/usr/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    device/htc/holiday/prebuilt/usr/keylayout/holiday-keypad.kl:system/usr/keylayout/holiday-keypad.kl

# Input device config
PRODUCT_COPY_FILES += \
    device/htc/holiday/prebuilt/usr/idc/cy8c-touchscreen.idc:system/usr/idc/cy8c-touchscreen.idc \
    device/htc/holiday/prebuilt/usr/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

# Adreno Drivers
PRODUCT_COPY_FILES += \
    device/htc/holiday/prebuilt/etc/firmware/a225_pfp.fw:system/etc/firmware/a225_pfp.fw \
    device/htc/holiday/prebuilt/etc/firmware/a225_pm4.fw:system/etc/firmware/a225_pm4.fw \
    device/htc/holiday/prebuilt/etc/firmware/a225p5_pm4.fw:system/etc/firmware/a225p5_pm4.fw \
    device/htc/holiday/prebuilt/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    device/htc/holiday/prebuilt/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw

# Wifi Firmware
PRODUCT_COPY_FILES += \
    device/htc/holiday/prebuilt/etc/firmware/BCM4330B1.hcd:system/etc/firmware/BCM4330B1.hcd \
    device/htc/holiday/prebuilt/etc/firmware/fw_bcm4330_apsta_b1.bin:system/etc/firmware/fw_bcm4330_apsta_b1.bin \
    device/htc/holiday/prebuilt/etc/firmware/fw_bcm4330_apsta_b2.bin:system/etc/firmware/fw_bcm4330_apsta_b2.bin \
    device/htc/holiday/prebuilt/etc/firmware/fw_bcm4330_b1.bin:system/etc/firmware/fw_bcm4330_b1.bin \
    device/htc/holiday/prebuilt/etc/firmware/fw_bcm4330_b2.bin:system/etc/firmware/fw_bcm4330_b2.bin \
    device/htc/holiday/prebuilt/etc/firmware/fw_bcm4330_p2p_b1.bin:system/etc/firmware/fw_bcm4330_p2p_b1.bin \
    device/htc/holiday/prebuilt/etc/firmware/fw_bcm4330_p2p_b2.bin:system/etc/firmware/fw_bcm4330_p2p_b2.bin

# Extra properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.setupwizard.enable_bypass=1 \
    ro.com.google.locationfeatures=1 \
    dalvik.vm.lockprof.threshold=500 \
    dalvik.vm.dexopt-flags=m=y

# We have enough space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# This file is generated by device/htc/holiday/setup-makefiles.sh
PRODUCT_COPY_FILES += \
    device/htc/holiday/prebuilt/lib/libaudioalsa.so:obj/lib/libaudioalsa.so \
    device/htc/holiday/prebuilt/lib/libacdbmapper.so:obj/lib/libacdbmapper.so \
    device/htc/holiday/prebuilt/lib/libacdbloader.so:obj/lib/libacdbloader.so \
    device/htc/holiday/prebuilt/lib/libaudioalsa.so.so:obj/lib/libaudioalsa.so \
    device/htc/holiday/prebuilt/lib/liboncrpc.so:obj/lib/liboncrpc.so \
    device/htc/holiday/prebuilt/lib/libnv.so:obj/lib/libnv.so \
    device/htc/holiday/prebuilt/lib/libv8.so:obj/lib/libv8.so \
    device/htc/holiday/prebuilt/lib/libqc-opt.so:obj/lib/libqc-opt.so \
    device/htc/holiday/prebuilt/lib/hw/camera.vendor.msm8660.so:obj/lib/hw/camera.vendor.msm8660.so

PRODUCT_COPY_FILES += \
    device/htc/holiday/prebuilt/etc/vpimg:system/etc/vpimg \
    device/htc/holiday/prebuilt/bin/awb_camera:system/bin/awb_camera \
    device/htc/holiday/prebuilt/bin/bma150_usr:system/bin/bma150_usr \
    device/htc/holiday/prebuilt/bin/charging:system/bin/charging \
    device/htc/holiday/prebuilt/bin/dmagent:system/bin/dmagent \
    device/htc/holiday/prebuilt/bin/htcbatt:system/bin/htcbatt \
    device/htc/holiday/prebuilt/bin/ip:system/bin/ip \
    device/htc/holiday/prebuilt/bin/ks:system/bin/ks \
    device/htc/holiday/prebuilt/bin/mm-abl-daemon:system/bin/mm-abl-daemon \
    device/htc/holiday/prebuilt/bin/mpdecision:system/bin/mpdecision \
    device/htc/holiday/prebuilt/bin/netmgrd:system/bin/netmgrd \
    device/htc/holiday/prebuilt/bin/netsharing:system/bin/netsharing \
    device/htc/holiday/prebuilt/bin/qcks:system/bin/qcks \
    device/htc/holiday/prebuilt/bin/qmiproxy:system/bin/qmiproxy \
    device/htc/holiday/prebuilt/bin/qmuxd:system/bin/qmuxd \
    device/htc/holiday/prebuilt/bin/rmt_storage:system/bin/rmt_storage \
    device/htc/holiday/prebuilt/bin/thermald:system/bin/thermald \
    device/htc/holiday/prebuilt/bin/wireless_modem:system/bin/wireless_modem \
    device/htc/holiday/prebuilt/bin/zchgd:system/bin/zchgd \
    device/htc/holiday/prebuilt/lib/libhtc_acoustic.so:system/lib/libhtc_acoustic.so \
    device/htc/holiday/prebuilt/lib/libaudioalsa.so:system/lib/libaudioalsa.so \
    device/htc/holiday/prebuilt/lib/libaudcal.so:system/lib/libaudcal.so \
    device/htc/holiday/prebuilt/lib/libacdbmapper.so:system/lib/libacdbmapper.so \
    device/htc/holiday/prebuilt/lib/libacdbloader.so:system/lib/libacdbloader.so \
    device/htc/holiday/prebuilt/lib/hw/camera.vendor.msm8660.so:system/lib/hw/camera.vendor.msm8660.so \
    device/htc/holiday/prebuilt/lib/libcamerapp.so:system/lib/libcamerapp.so \
    device/htc/holiday/prebuilt/lib/libcameraface.so:system/lib/libcameraface.so \
    device/htc/holiday/prebuilt/lib/libposteffect.so:system/lib/libposteffect.so \
    device/htc/holiday/prebuilt/lib/libOlaEngine.so:system/lib/libOlaEngine.so \
    device/htc/holiday/prebuilt/lib/liboemcamera.so:system/lib/liboemcamera.so \
    device/htc/holiday/prebuilt/lib/libmmjpeg.so:system/lib/libmmjpeg.so \
    device/htc/holiday/prebuilt/lib/libmmipl.so:system/lib/libmmipl.so \
    device/htc/holiday/prebuilt/lib/libgemini.so:system/lib/libgemini.so \
    device/htc/holiday/prebuilt/lib/libidl.so:system/lib/libidl.so \
    device/htc/holiday/prebuilt/lib/libchromatix_s5k3h2yx_zsl.so:system/lib/libchromatix_s5k3h2yx_zsl.so \
    device/htc/holiday/prebuilt/lib/libchromatix_s5k3h2yx_preview.so:system/lib/libchromatix_s5k3h2yx_preview.so \
    device/htc/holiday/prebuilt/lib/libchromatix_s5k3h2yx_hfr.so:system/lib/libchromatix_s5k3h2yx_hfr.so \
    device/htc/holiday/prebuilt/lib/libchromatix_s5k3h2yx_default_video.so:system/lib/libchromatix_s5k3h2yx_default_video.so \
    device/htc/holiday/prebuilt/lib/libchromatix_s5k3h1gx_zsl.so:system/lib/libchromatix_s5k3h1gx_zsl.so \
    device/htc/holiday/prebuilt/lib/libchromatix_s5k3h1gx_preview.so:system/lib/libchromatix_s5k3h1gx_preview.so \
    device/htc/holiday/prebuilt/lib/libchromatix_s5k3h1gx_zsl.so:system/lib/libchromatix_s5k3h1gx_zsl.so \
    device/htc/holiday/prebuilt/lib/libchromatix_s5k3h1gx_hfr.so:system/lib/libchromatix_s5k3h1gx_hfr.so \
    device/htc/holiday/prebuilt/lib/libchromatix_s5k3h1gx_default_video.so:system/lib/libchromatix_s5k3h1gx_default_video.so \
    device/htc/holiday/prebuilt/lib/libchromatix_ov8830_zsl.so:system/lib/libchromatix_ov8830_zsl.so \
    device/htc/holiday/prebuilt/lib/libchromatix_ov8830_preview.so:system/lib/libchromatix_ov8830_preview.so \
    device/htc/holiday/prebuilt/lib/libchromatix_ov8830_hfr.so:system/lib/libchromatix_ov8830_hfr.so \
    device/htc/holiday/prebuilt/lib/libchromatix_ov8830_default_video.so:system/lib/libchromatix_ov8830_default_video.so \
    device/htc/holiday/prebuilt/lib/libchromatix_mt9d015_preview.so:system/lib/libchromatix_mt9d015_preview.so \
    device/htc/holiday/prebuilt/lib/libchromatix_mt9d015_default_zsl.so:system/lib/libchromatix_mt9d015_default_zsl.so \
    device/htc/holiday/prebuilt/lib/libchromatix_mt9d015_default_video.so:system/lib/libchromatix_mt9d015_default_video.so \
    device/htc/holiday/prebuilt/lib/libchromatix_imx105_zsl.so:system/lib/libchromatix_imx105_zsl.so \
    device/htc/holiday/prebuilt/lib/libchromatix_imx105_preview.so:system/lib/libchromatix_imx105_preview.so \
    device/htc/holiday/prebuilt/lib/libchromatix_imx105_default_video.so:system/lib/libchromatix_imx105_default_video.so \
    device/htc/holiday/prebuilt/lib/egl/eglsubAndroid.so:system/lib/egl/eglsubAndroid.so \
    device/htc/holiday/prebuilt/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
    device/htc/holiday/prebuilt/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    device/htc/holiday/prebuilt/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    device/htc/holiday/prebuilt/lib/egl/libplayback_adreno200.so:system/lib/egl/libplayback_adreno200.so \
    device/htc/holiday/prebuilt/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \
    device/htc/holiday/prebuilt/lib/libsc-a2xx.so:system/lib/libsc-a2xx.so \
    device/htc/holiday/prebuilt/lib/libllvm-arm.so:/system/lib/libllvm-arm.so \
    device/htc/holiday/prebuilt/lib/libOpenVG.so:system/lib/libOpenVG.so \
    device/htc/holiday/prebuilt/lib/libOpenCL.so:system/lib/libOpenVG.so \
    device/htc/holiday/prebuilt/lib/libgsl.so:system/lib/libgsl.so \
    device/htc/holiday/prebuilt/lib/libC2D2.so:system/lib/libC2D2.so \
    device/htc/holiday/prebuilt/lib/libc2d2_z180.so:system/lib/libc2d2_z180.so \
    device/htc/holiday/prebuilt/lib/libmm-color-convertor.so:system/lib/libmm-color-convertor.so \
    device/htc/holiday/prebuilt/lib/liboncrpc.so:system/lib/liboncrpc.so \
    device/htc/holiday/prebuilt/lib/libdsm.so:system/lib/libdsm.so \
    device/htc/holiday/prebuilt/lib/libdiag.so:system/lib/libdiag.so \
    device/htc/holiday/prebuilt/lib/libdsi_netctrl.so:system/lib/libdsi_netctrl.so \
    device/htc/holiday/prebuilt/lib/libdsutils.so:system/lib/libdsutils.so \
    device/htc/holiday/prebuilt/lib/libnetmgr.so:system/lib/libnetmgr.so \
    device/htc/holiday/prebuilt/lib/libnv.so:system/lib/libnv.so \
    device/htc/holiday/prebuilt/lib/libpbmlib.so:system/lib/libpbmlib.so \
    device/htc/holiday/prebuilt/lib/libqmiservices.so:system/lib/libqmiservices.so \
    device/htc/holiday/prebuilt/lib/libqmi.so:system/lib/libqmi.so \
    device/htc/holiday/prebuilt/lib/libqdp.so:system/lib/libqdp.so \
    device/htc/holiday/prebuilt/lib/libqc-opt.so:system/lib/libqc-opt.so \
    device/htc/holiday/prebuilt/lib/libqueue.so:system/lib/libqueue.so \
    device/htc/holiday/prebuilt/lib/libril-qc-qmi-1.so:system/lib/libril-qc-qmi-1.so \
    device/htc/holiday/prebuilt/lib/libril-qcril-hook-oem.so:system/lib/libril-qcril-hook-oem.so \
    device/htc/holiday/prebuilt/lib/hw/sensors.holiday.so:system/lib/hw/sensors.holiday.so \
    device/htc/holiday/prebuilt/lib/libmpl_jni.so:system/lib/libmpl_jni.so \
    device/htc/holiday/prebuilt/lib/libmpl.so:system/lib/libmpl.so \
    device/htc/holiday/prebuilt/lib/libmlplatform.so:system/lib/libmlplatform.so \
    device/htc/holiday/prebuilt/lib/libmllite.so:system/lib/libmllite.so \
    device/htc/holiday/prebuilt/lib/libril.so:system/lib/libril.so \
    device/htc/holiday/prebuilt/lib/libv8.so:system/lib/libv8.so \
    device/htc/holiday/prebuilt/app/Camera2.apk:system/app/Camera2.apk \
    device/htc/holiday/prebuilt/app/Camera2.apk:system/priv-app/Camera2.apk

PRODUCT_PROPERTY_OVERRIDES += \
      media.a1026.nsForVoiceRec=0 \
      media.a1026.enableA1026=0 \
      htc.audio.alt.enable=0 \
      htc.audio.hac.enable=0

# call dalvik heap config
$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)

# Device id
PRODUCT_NAME := full_holiday
PRODUCT_DEVICE := holiday
