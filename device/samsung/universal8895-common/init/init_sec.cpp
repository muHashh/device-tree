/*
   Copyright (c) 2019, The Dokdo Project. All rights reserved.

   Redistribution and use in source and binary forms, with or without
   modification, are permitted provided that the following conditions are
   met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above
      copyright notice, this list of conditions and the following
      disclaimer in the documentation and/or other materials provided
      with the distribution.
    * Neither the name of The Linux Foundation nor the names of its
      contributors may be used to endorse or promote products derived
      from this software without specific prior written permission.

   THIS SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESS OR IMPLIED
   WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
   MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT
   ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS
   BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
   CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
   SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
   BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
   WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
   OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN
   IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#define LOG_TAG "libinit_sec"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <android-base/properties.h>
#include <log/log.h>

#include "property_service.h"
#include "vendor_init.h"

#include "init_sec.h"

using namespace std;
using namespace android;

namespace android {
namespace init {

void vendor_load_properties()
{    
    string device_orig = base::GetProperty("ro.product.device", "");
    string platform = base::GetProperty("ro.board.platform", "");
    string bootloader = base::GetProperty("ro.bootloader", "");

    if (platform != ANDROID_TARGET) {
        return;
    }

    /*
     * variant noplus
     */
    device_variant variant = UNKNOWN;
    if (bootloader.find("G950F") != string::npos) {
        if (device_orig != "dreamlte") {
            variant = G950F;
        }
    } else if (bootloader.find("G950K") != string::npos) {
        variant = G950K;
    } else if (bootloader.find("G950L") != string::npos) {
        variant = G950L;
    } else if (bootloader.find("G950S") != string::npos) {
        variant = G950S;
    } else if (bootloader.find("G950W8") != string::npos) {
        variant = G950W8;
    }

    /*
     * variant plus
     */
    else if (bootloader.find("G955F") != string::npos) {
        if (device_orig != "dream2lte") {
            variant = G955F;
        }
    } else if (bootloader.find("G955K") != string::npos) {
        variant = G955K;
    } else if (bootloader.find("G955L") != string::npos) {
        variant = G955L;
    } else if (bootloader.find("G955S") != string::npos) {
        variant = G955S;
    } else if (bootloader.find("G955W8") != string::npos) {
        variant = G955W8;
    } else {
        return;
    }

    string model, device, product;
    switch (variant) {

        /*
         * variant noplus
         */
        case G950F:
            /* dreamltexx */
            model = "SM-G950F";
            device = "dreamltexx";
            product = "dreamlte";
            break;

        case G950K:
            /* dreamltektt */
            model = "SM-G950K";
            device = "dreamltektt";
            product = "dreamlte";
            break;

        case G950L:
            /* dreamltelgt */
            model = "SM-G950L";
            device = "dreamltelgt";
            product = "dreamlte";
            break;

        case G950S:
            /* dreamlteskt */
            model = "SM-G950S";
            device = "dreamlteskt";
            product = "dreamlte";
            break;

        case G950W8:
            /* dreamltebmc */
            model = "SM-G950W8";
            device = "dreamltebmc";
            product = "dreamlte";
            break;

        /*
         * variant plus
         */
        case G955F:
            /* dream2ltexx */
            model = "SM-G955F";
            device = "dream2ltexx";
            product = "dream2lte";
            break;

        case G955K:
            /* dream2ltektt */
            model = "SM-G955K";
            device = "dream2ltektt";
            product = "dream2lte";
            break;

        case G955L:
            /* dream2ltelgt */
            model = "SM-G955L";
            device = "dream2ltelgt";
            product = "dream2lte";
            break;

        case G955S:
            /* dream2lteskt */
            model = "SM-G955S";
            device = "dream2lteskt";
            product = "dream2lte";
            break;

        case G955W8:
            /* dream2ltebmc */
            model = "SM-G955W8";
            device = "dream2ltebmc";
            product = "dream2lte";
            break;

        default:
            return;
    }

    // load original properties
    string description_orig = base::GetProperty("ro.build.description", "");
    string fingerprint_orig = base::GetProperty("ro.build.fingerprint", "");

    // replace device-names with correct one
    if (device_orig != "") {
        if (description_orig != "")
            replace(description_orig, device_orig, device);

        if (fingerprint_orig != "")
            replace(fingerprint_orig, device_orig, device);
    }

    // update properties
    property_override("ro.product.model", model);
    property_override("ro.product.device", device);
    property_override("ro.build.product", product);
    property_override("ro.lineage.device", device);
    property_override("ro.vendor.product.device", device);
    property_override("ro.build.description", description_orig);
    property_override("ro.build.fingerprint", fingerprint_orig);
}

}
}
