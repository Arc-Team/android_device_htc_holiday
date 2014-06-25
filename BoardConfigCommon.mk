# Copyright (C) 2012 The CyanogenMod Project
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

BOARD_VENDOR := htc

TARGET_SPECIFIC_HEADER_PATH := device/htc/holiday/include

# Bootloader
TARGET_NO_BOOTLOADER := true

# Kernel
TARGET_KERNEL_SOURCE := kernel/htc/msm8660

# Platform
TARGET_BOARD_PLATFORM := msm8660
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

# Architecture
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := scorpion

# Flags
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE

# FB legacy
BOARD_EGL_NEEDS_LEGACY_FB := true

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true
TARGET_QCOM_MEDIA_VARIANT := legacy
TARGET_QCOM_DISPLAY_VARIANT := legacy

# Audio
COMMON_GLOBAL_CFLAGS += -DHTC_ACOUSTIC_AUDIO -DLEGACY_QCOM_VOICE
TARGET_QCOM_AUDIO_VARIANT := caf
BOARD_QCOM_TUNNEL_LPA_ENABLED := false
BOARD_USES_LEGACY_ALSA_AUDIO := true
BOARD_QCOM_VOIP_ENABLED := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUEDROID_VENDOR_CONF := device/htc/holiday/bluetooth/vnd_msm8660.txt
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/htc/holiday/bluetooth/include

# Camera
BOARD_USES_QCOM_LEGACY_CAM_PARAMS := true
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB -DNO_UPDATE_PREVIEW -DQCOM_BSP_CAMERA_ABI_HACK
BOARD_HAVE_HTC_FFC := true
TARGET_DISABLE_ARM_PIE := true
BOARD_NEEDS_MEMORYHEAPPMEM := true
USE_DEVICE_SPECIFIC_CAMERA := true
BOARD_USES_PMEM_CAMERA := true

# QCOM BSP (Board Support Package)
#TARGET_USES_QCOM_BSP := true
#COMMON_GLOBAL_CFLAGS += -DQCOM_BSP

# Filesystem
BOARD_VOLD_MAX_PARTITIONS := 36

# GPS
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# Graphics
TARGET_USES_ION := true
COMMON_GLOBAL_CFLAGS += -DQCOM_NO_SECURE_PLAYBACK -DREFRESH_RATE=60 -DHTC_RGBA_8888_OFFSET
USE_OPENGL_RENDERER := true
TARGET_NO_HW_VSYNC := true
TARGET_DOESNT_USE_FENCE_SYNC := true
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
BOARD_EGL_NEEDS_FNW := true
TARGET_DISPLAY_INSECURE_MM_HEAP := true
BOARD_USE_MHEAP_SCREENSHOT := true
TARGET_ENABLE_AV_ENHANCEMENTS := true
TARGET_USES_POST_PROCESSING := true
TARGET_USES_C2D_COMPOSITION := true
BOARD_EGL_CFG := device/htc/holiday/configs/egl.cfg
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3

# Lights
# legacy LIBLIGHT naming
TARGET_PROVIDES_LIBLIGHT := true
TARGET_PROVIDES_LIBLIGHTS := true

# Sensors
COMMON_GLOBAL_CFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS

# Hardware tunables
BOARD_HARDWARE_CLASS := device/htc/holiday/cmhw

# Recovery
USE_SET_METADATA := false

# SELinux
BOARD_SEPOLICY_DIRS += \
    device/htc/holiday/sepolicy

BOARD_SEPOLICY_UNION += \
    app.te \
    bluetooth.te \
    device.te \
    domain.te \
    drmserver.te \
    file_contexts \
    files \
    file.te \
    hci_init.te \
    healthd.te \
    init.te \
    init_shell.te \
    keystore.te \
    kickstart.te \
    netd.te \
    mediaserver.te \
    rild.te \
    surfaceflinger.te \
    system.te \
    ueventd.te \
    untrusted_app.te \
    vold.te \
    wpa.te \
    wpa_socket.te

