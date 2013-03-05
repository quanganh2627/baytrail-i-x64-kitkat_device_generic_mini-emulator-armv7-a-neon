# Copyright (C) 2013 The Android Open Source Project
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

$(call inherit-product, device/generic/armv7-a-neon/mini_armv7a_neon.mk)

PRODUCT_NAME := mini_emulator_armv7a_neon
PRODUCT_DEVICE := mini-emulator-armv7-a-neon
PRODUCT_BRAND := Android
PRODUCT_MODEL := mini-emulator-armv7-a-neon

# share the same goldfish kernel, but should have fuse support
LOCAL_KERNEL := prebuilts/qemu-kernel/arm/kernel-qemu-armv7

PRODUCT_PACKAGES += \
    audio.primary.goldfish

# media_profiles and media_codecs will be moved later!
PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel \
    device/generic/mini-emulator-armv7-a-neon/init.mini-emulator-armv7-a-neon.rc:root/init.goldfish.rc \
    device/generic/goldfish/init.goldfish.sh:system/etc/init.goldfish.sh \
    device/generic/goldfish/ueventd.goldfish.rc:root/ueventd.goldfish.rc \
    device/generic/goldfish/data/etc/apns-conf.xml:system/etc/apns-conf.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/av/media/libeffects/data/audio_effects.conf:system/etc/audio_effects.conf \
    hardware/libhardware_legacy/audio/audio_policy.conf:system/etc/audio_policy.conf \
    $(call add-to-product-copy-files-if-exists,development/tools/emulator/system/camera/media_profiles.xml:system/etc/media_profiles.xml) \
    $(call add-to-product-copy-files-if-exists,development/tools/emulator/system/camera/media_codecs.xml:system/etc/media_codecs.xml)


