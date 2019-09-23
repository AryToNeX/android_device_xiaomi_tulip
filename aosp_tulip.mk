#
# Copyright (C) 2018-2019 The Android Open Source Project
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

# Inherit some common AOSP stuff
SMARTBUILD_RELEASE_CONFIG := vendor/aosp/common.mk

TARGET_BOOT_ANIMATION_RES := 2280
TARGET_USE_JELLY := true

# GApps
ifeq ($(CURRENT_BUILD_TYPE), gapps)
    TARGET_SHIPS_SEPERATE_GAPPS_BUILD := true
    WITH_GAPPS := true
    TARGET_GAPPS_ARCH := arm64
    IS_PHONE := true
endif

PRODUCT_NAME := aosp_tulip

include $(LOCAL_PATH)/common_tulip.mk
