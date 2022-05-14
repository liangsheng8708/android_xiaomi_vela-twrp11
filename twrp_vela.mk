#
# Copyright (C) 2017-2018 The Android Open Source Project
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

# Release name
PRODUCT_RELEASE_NAME := vela

$(call inherit-product, device/xiaomi/vela/device.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := twrp_vela
PRODUCT_DEVICE := vela
PRODUCT_BRAND := Meitu
PRODUCT_MODEL := Mi CC 9 Meitu Edition
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    sys.usb.controller=a600000.dwc3 \
    sys.usb.rndis.func.name=rndis_bam \
    sys.usb.rmnet.func.name=rmnet_bam \
    persist.sys.isUsbOtgEnabled=true \
    vendor.gatekeeper.disable_spu=true

PRODUCT_BUILD_PROP_OVERRIDES += \
	TARGET_DEVICE=vela \
	PRODUCT_NAME=vela

PRODUCT_PROPERTY_OVERRIDES += \
	ro.treble.enabled=true \
	ro.adb.secure=0 \
	ro.vendor.build.security_patch=2029-10-31

PRODUCT_SYSTEM_PROPERTY_BLACKLIST += \
	ro.bootimage.build.date.utc \
	ro.build.date.utc

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi