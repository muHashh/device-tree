#
# Copyright (C) 2017 The LineageOS Project
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
#

# USB
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.secure=0 \
    ro.adb.secure=0 \
    persist.service.adb.enable=1 \
    persist.service.debuggable=1

# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
    ro.bt.bdaddr_path="/efs/bluetooth/bt_addr"

# Bluetooth workaround:
# The new CAF code defaults to MCT HAL, but we
# need the old H4 HAL for our Broadcom WiFi.
PRODUCT_PROPERTY_OVERRIDES += \
    qcom.bluetooth.soc=rome

# Perf
#PRODUCT_PROPERTY_OVERRIDES += \
#    ro.sys.fw.dex2oat_thread_count=4

# Dalvik VM config for 2G RAM devices
# 192m of RAM gives enough space for 5 8 megapixel camera bitmaps in RAM.
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapstartsize=8m \
    dalvik.vm.heapgrowthlimit=192m \
    dalvik.vm.heapsize=512m \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.heapminfree=512k \
    dalvik.vm.heapmaxfree=8m

# Dalvik VM config for 4G RAM devices
#PRODUCT_PROPERTY_OVERRIDES += \
#    dalvik.vm.heapstartsize=8m \
#    dalvik.vm.heapgrowthlimit=256m \
#    dalvik.vm.heapsize=512m \
#    dalvik.vm.heaptargetutilization=0.75 \
#    dalvik.vm.heapminfree=2m \
#    dalvik.vm.heapmaxfree=8m

# Graphics
PRODUCT_PROPERTY_OVERRIDES += \
    ro.bq.gpu_to_cpu_unsupported=1 \
    ro.zygote.disable_gl_preload=true \
    ro.opengles.version=196610 \
    ro.hardware.egl=mali \
    ro.sf.lcd_density=560

# Network
# Define default initial receive window size in segments.
PRODUCT_PROPERTY_OVERRIDES += \
    net.tcp.default_init_rwnd=60

# Nfc
PRODUCT_PROPERTY_OVERRIDES += \
    ro.nfc.port="I2C" \
    ro.nfc.fw_dl_on_boot=false

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.add_power_save=1 \
    persist.radio.apm_sim_not_pwdn=1 \
    vendor.sec.rild.libpath=/vendor/lib64/libsec-ril.so \
    vendor.sec.rild.libpath2=/vendor/lib64/libsec-ril-dsds.so \
    ro.telephony.default_network=9 \
    ro.ril.gprsclass=10 \
    ro.ril.hsxpa=1 \
    ro.ril.telephony.mqanelements=6 \
    telephony.lteOnGsmDevice=1 \
    telephony.lteOnCdmaDevice=0

# Radio test
PRODUCT_PROPERTY_OVERRIDES += \
    ro.debug_level=0x494d \
    persist.radio.sib16_support=1 \
    persist.data.netmgrd.qos.enable=false \
    ro.use_data_netmgrd=false \
    ro.telephony.get_imsi_from_sim=true \
    ro.ril.force_eri_from_xml=true \
    ro.radio.noril=no

# Wifi
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0 \
    wifi.direct.interface=p2p-dev-wlan0

# Wifi test
#PRODUCT_PROPERTY_OVERRIDES += \
#    ap.interface=wlan0

# Usb (temp)
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp,adb \
    sys.usb.ffs.aio_compat=1

# sdcardfs
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sys.sdcardfs=false \
    ro.sys.sdcardfs.legacy-mounting=1

# Treble_omx
PRODUCT_PROPERTY_OVERRIDES += \
    persist.media.treble_omx=false

# Voice assistant
#PRODUCT_PROPERTY_OVERRIDES += \
#    ro.opa.eligible_device=true
