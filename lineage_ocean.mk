#
# Copyright (C) 2019 The MoKee Open Source Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit from ocean device
$(call inherit-product, device/smartisan/ocean/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_ocean
PRODUCT_BRAND := SMARTISAN
PRODUCT_DEVICE := ocean
PRODUCT_MANUFACTURER := smartisan
PRODUCT_MODEL := OE106

# Device prop
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="ocean" \
    PRIVATE_BUILD_DESC="ocean-user 8.1.0 OPM1.171019.026 1 dev-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := SMARTISAN/oxford/oxford:8.1.0/OPM1.171019.026/1574326817:user/dev-keys
