# Copyright (C) 2019 The LineageOS Project
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

PRODUCT_COPY_FILES += \
    vendor/samsung/universal8895-seal/proprietary/lib/hw/gatekeeper.exynos8895.so:system/lib/hw/gatekeeper.exynos8895.so \
    vendor/samsung/universal8895-seal/proprietary/lib/hw/gralloc.exynos5.so:system/lib/hw/gralloc.exynos5.so \
    vendor/samsung/universal8895-seal/proprietary/lib/hw/hwcomposer.exynos5.so:system/lib/hw/hwcomposer.exynos5.so \
    vendor/samsung/universal8895-seal/proprietary/lib/hw/keystore.exynos8895.so:system/lib/hw/keystore.exynos8895.so \
    vendor/samsung/universal8895-seal/proprietary/lib/hw/memtrack.exynos5.so:system/lib/hw/memtrack.exynos5.so \
    vendor/samsung/universal8895-seal/proprietary/lib/libexynosdisplay.so:system/lib/libexynosdisplay.so \
    vendor/samsung/universal8895-seal/proprietary/lib/libexynosutils.so:system/lib/libexynosutils.so \
    vendor/samsung/universal8895-seal/proprietary/lib/libexynosv4l2.so:system/lib/libexynosv4l2.so \
    vendor/samsung/universal8895-seal/proprietary/lib/libfimg.so:system/lib/libfimg.so \
    vendor/samsung/universal8895-seal/proprietary/lib/libhdmi.so:system/lib/libhdmi.so \
    vendor/samsung/universal8895-seal/proprietary/lib/libhwcutils.so:system/lib/libhwcutils.so \
    vendor/samsung/universal8895-seal/proprietary/lib/libion_exynos.so:system/lib/libion_exynos.so \
    vendor/samsung/universal8895-seal/proprietary/lib/libmpp.so:system/lib/libmpp.so

PRODUCT_COPY_FILES += \
    vendor/samsung/universal8895-seal/proprietary/lib64/hw/gatekeeper.exynos8895.so:system/lib64/hw/gatekeeper.exynos8895.so \
    vendor/samsung/universal8895-seal/proprietary/lib64/hw/gralloc.exynos5.so:system/lib64/hw/gralloc.exynos5.so \
    vendor/samsung/universal8895-seal/proprietary/lib64/hw/hwcomposer.exynos5.so:system/lib64/hw/hwcomposer.exynos5.so \
    vendor/samsung/universal8895-seal/proprietary/lib64/hw/keystore.exynos8895.so:system/lib64/hw/keystore.exynos8895.so \
    vendor/samsung/universal8895-seal/proprietary/lib64/hw/memtrack.exynos5.so:system/lib64/hw/memtrack.exynos5.so \
    vendor/samsung/universal8895-seal/proprietary/lib64/libexynosdisplay.so:system/lib64/libexynosdisplay.so \
    vendor/samsung/universal8895-seal/proprietary/lib64/libexynosutils.so:system/lib64/libexynosutils.so \
    vendor/samsung/universal8895-seal/proprietary/lib64/libexynosv4l2.so:system/lib64/libexynosv4l2.so \
    vendor/samsung/universal8895-seal/proprietary/lib64/libfimg.so:system/lib64/libfimg.so \
    vendor/samsung/universal8895-seal/proprietary/lib64/libhdmi.so:system/lib64/libhdmi.so \
    vendor/samsung/universal8895-seal/proprietary/lib64/libhwcutils.so:system/lib64/libhwcutils.so \
    vendor/samsung/universal8895-seal/proprietary/lib64/libion_exynos.so:system/lib64/libion_exynos.so \
    vendor/samsung/universal8895-seal/proprietary/lib64/libmpp.so:system/lib64/libmpp.so

PRODUCT_COPY_FILES += \
    vendor/samsung/universal8895-seal/proprietary/lib/libexynosgscaler.so:system/lib/libexynosgscaler.so \
    vendor/samsung/universal8895-seal/proprietary/lib/libexynosscaler.so:system/lib/libexynosscaler.so \
    vendor/samsung/universal8895-seal/proprietary/lib64/libexynosgscaler.so:system/lib64/libexynosgscaler.so \
    vendor/samsung/universal8895-seal/proprietary/lib64/libexynosscaler.so:system/lib64/libexynosscaler.so

PRODUCT_COPY_FILES += \
    vendor/samsung/universal8895-seal/proprietary/lib/libcsc.so:system/lib/libcsc.so \
    vendor/samsung/universal8895-seal/proprietary/lib64/libcsc.so:system/lib64/libcsc.so

PRODUCT_COPY_FILES += \
    vendor/samsung/universal8895-seal/proprietary/lib/libhwjpeg.so:system/lib/libhwjpeg.so \
    vendor/samsung/universal8895-seal/proprietary/lib64/libhwjpeg.so:system/lib64/libhwjpeg.so

#PRODUCT_COPY_FILES += \
#    vendor/samsung/universal8895-seal/proprietary/lib/libion.so:system/lib/libion.so \
#    vendor/samsung/universal8895-seal/proprietary/lib64/libion.so:system/lib64/libion.so

# Camera exynos5
PRODUCT_COPY_FILES += \
    vendor/samsung/universal8895-seal/proprietary/lib/hw/camera.vendor.universal8895.so:system/lib/hw/camera.vendor.universal8895.so \
    vendor/samsung/universal8895-seal/proprietary/lib64/hw/camera.vendor.universal8895.so:system/lib64/hw/camera.vendor.universal8895.so \
    vendor/samsung/universal8895-seal/proprietary/lib/libexynoscamera.so:system/lib/libexynoscamera.so \
    vendor/samsung/universal8895-seal/proprietary/lib64/libexynoscamera.so:system/lib64/libexynoscamera.so \
    vendor/samsung/universal8895-seal/proprietary/lib/libexynoscamera3.so:system/lib/libexynoscamera3.so \
    vendor/samsung/universal8895-seal/proprietary/lib64/libexynoscamera3.so:system/lib64/libexynoscamera3.so

# Exynos OMX
PRODUCT_COPY_FILES += \
    vendor/samsung/universal8895-seal/proprietary/lib/omx/libOMX.Exynos.AVC.Decoder.so:system/lib/omx/libOMX.Exynos.AVC.Decoder.so \
    vendor/samsung/universal8895-seal/proprietary/lib/omx/libOMX.Exynos.AVC.Encoder.so:system/lib/omx/libOMX.Exynos.AVC.Encoder.so \
    vendor/samsung/universal8895-seal/proprietary/lib/omx/libOMX.Exynos.HEVC.Decoder.so:system/lib/omx/libOMX.Exynos.HEVC.Decoder.so \
    vendor/samsung/universal8895-seal/proprietary/lib/omx/libOMX.Exynos.HEVC.Encoder.so:system/lib/omx/libOMX.Exynos.HEVC.Encoder.so \
    vendor/samsung/universal8895-seal/proprietary/lib/omx/libOMX.Exynos.MPEG4.Decoder.so:system/lib/omx/libOMX.Exynos.MPEG4.Decoder.so \
    vendor/samsung/universal8895-seal/proprietary/lib/omx/libOMX.Exynos.MPEG4.Encoder.so:system/lib/omx/libOMX.Exynos.MPEG4.Encoder.so \
    vendor/samsung/universal8895-seal/proprietary/lib/omx/libOMX.Exynos.VP8.Decoder.so:system/lib/omx/libOMX.Exynos.VP8.Decoder.so \
    vendor/samsung/universal8895-seal/proprietary/lib/omx/libOMX.Exynos.VP8.Encoder.so:system/lib/omx/libOMX.Exynos.VP8.Encoder.so \
    vendor/samsung/universal8895-seal/proprietary/lib/omx/libOMX.Exynos.VP9.Decoder.so:system/lib/omx/libOMX.Exynos.VP9.Decoder.so \
    vendor/samsung/universal8895-seal/proprietary/lib/omx/libOMX.Exynos.VP9.Encoder.so:system/lib/omx/libOMX.Exynos.VP9.Encoder.so \
    vendor/samsung/universal8895-seal/proprietary/lib/omx/libOMX.Exynos.WMV.Decoder.so:system/lib/omx/libOMX.Exynos.WMV.Decoder.so \
    vendor/samsung/universal8895-seal/proprietary/lib64/omx/libOMX.Exynos.AVC.Decoder.so:system/lib64/omx/libOMX.Exynos.AVC.Decoder.so \
    vendor/samsung/universal8895-seal/proprietary/lib64/omx/libOMX.Exynos.AVC.Encoder.so:system/lib64/omx/libOMX.Exynos.AVC.Encoder.so \
    vendor/samsung/universal8895-seal/proprietary/lib64/omx/libOMX.Exynos.HEVC.Decoder.so:system/lib64/omx/libOMX.Exynos.HEVC.Decoder.so \
    vendor/samsung/universal8895-seal/proprietary/lib64/omx/libOMX.Exynos.HEVC.Encoder.so:system/lib64/omx/libOMX.Exynos.HEVC.Encoder.so \
    vendor/samsung/universal8895-seal/proprietary/lib64/omx/libOMX.Exynos.MPEG4.Decoder.so:system/lib64/omx/libOMX.Exynos.MPEG4.Decoder.so \
    vendor/samsung/universal8895-seal/proprietary/lib64/omx/libOMX.Exynos.MPEG4.Encoder.so:system/lib64/omx/libOMX.Exynos.MPEG4.Encoder.so \
    vendor/samsung/universal8895-seal/proprietary/lib64/omx/libOMX.Exynos.VP8.Decoder.so:system/lib64/omx/libOMX.Exynos.VP8.Decoder.so \
    vendor/samsung/universal8895-seal/proprietary/lib64/omx/libOMX.Exynos.VP8.Encoder.so:system/lib64/omx/libOMX.Exynos.VP8.Encoder.so \
    vendor/samsung/universal8895-seal/proprietary/lib64/omx/libOMX.Exynos.VP9.Decoder.so:system/lib64/omx/libOMX.Exynos.VP9.Decoder.so \
    vendor/samsung/universal8895-seal/proprietary/lib64/omx/libOMX.Exynos.VP9.Encoder.so:system/lib64/omx/libOMX.Exynos.VP9.Encoder.so \
    vendor/samsung/universal8895-seal/proprietary/lib64/omx/libOMX.Exynos.WMV.Decoder.so:system/lib64/omx/libOMX.Exynos.WMV.Decoder.so

# Exynos OMX MPEG2 Decoder
PRODUCT_COPY_FILES += \
    vendor/samsung/universal8895-seal/proprietary/lib/omx/libOMX.Exynos.MPEG2.Decoder.so:system/lib/omx/libOMX.Exynos.MPEG2.Decoder.so \
    vendor/samsung/universal8895-seal/proprietary/lib64/omx/libOMX.Exynos.MPEG2.Decoder.so:system/lib64/omx/libOMX.Exynos.MPEG2.Decoder.so

# Exynos OMX Resource
PRODUCT_COPY_FILES += \
    vendor/samsung/universal8895-seal/proprietary/lib/libExynosOMX_Core.so:system/lib/libExynosOMX_Core.so \
    vendor/samsung/universal8895-seal/proprietary/lib/libExynosOMX_Resourcemanager.so:system/lib/libExynosOMX_Resourcemanager.so \
    vendor/samsung/universal8895-seal/proprietary/lib64/libExynosOMX_Core.so:system/lib64/libExynosOMX_Core.so \
    vendor/samsung/universal8895-seal/proprietary/lib64/libExynosOMX_Resourcemanager.so:system/lib64/libExynosOMX_Resourcemanager.so

# Exynos libstagefrighthw
PRODUCT_COPY_FILES += \
    vendor/samsung/universal8895-seal/proprietary/lib/libstagefrighthw.so:system/lib/libstagefrighthw.so \
    vendor/samsung/universal8895-seal/proprietary/lib64/libstagefrighthw.so:system/lib64/libstagefrighthw.so

# libGLES libacryl use stock 7
PRODUCT_COPY_FILES += \
    vendor/samsung/universal8895-seal/proprietary/vendor/lib/egl/libGLES_mali.so:system/vendor/lib/egl/libGLES_mali.so \
    vendor/samsung/universal8895-seal/proprietary/vendor/lib64/egl/libGLES_mali.so:system/vendor/lib64/egl/libGLES_mali.so \
    vendor/samsung/universal8895-seal/proprietary/lib/libacryl.so:system/lib/libacryl.so \
    vendor/samsung/universal8895-seal/proprietary/lib64/libacryl.so:system/lib64/libacryl.so

# Create Mali links for Vulkan
PRODUCT_PACKAGES += libGLES_mali
