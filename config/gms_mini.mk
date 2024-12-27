#
# Copyright (C) 2018-2019 The Google Pixel3ROM Project
# Copyright (C) 2024 The hentaiOS Project and its Proprietors
#
# Licensed under the Apache License, Version 2.0 (the License);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an AS IS BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
#

# product/app
PRODUCT_PACKAGES += \
    CalculatorGooglePrebuilt_85005407 \
    CarrierMetrics \
    Chrome-Stub \
    DevicePolicyPrebuilt-v10052480 \
    GoogleContacts \
    LatinIMEGooglePrebuilt \
    LocationHistoryPrebuilt \
    MarkupGoogle_v2 \
    NgaResources \
    PixelThemesStub \
    PixelThemesStub2022_and_newer \
    PixelWallpapers2024 \
    PlayAutoInstallConfig \
    PrebuiltBugle \
    PrebuiltDeskClockGoogle_76004981 \
    PrebuiltGoogleAdservicesTvp \
    PrebuiltGoogleTelemetryTvp \
    SoundPickerPrebuilt_31000232 \
    SwitchAccessPrebuilt_1.15.0.629986523 \
    TrichromeLibrary \
    TrichromeLibrary-Stub \
    Tycho \
    VoiceAccessPrebuilt \
    VZWAPNLib \
    WallpaperEmojiPrebuilt-v2804 \
    WebViewGoogle \
    WebViewGoogle-Stub \
    arcore-1.42 \
    talkback

# product/priv-app
PRODUCT_PACKAGES += \
    AICorePrebuilt-aicore_20240509.01_RC02 \
    AiWallpapers \
    AmbientStreaming \
    AppDirectedSMSService \
    CarrierLocation \
    CarrierSettings \
    CarrierWifi \
    CbrsNetworkMonitor \
    ConfigUpdater \
    DCMO \
    ConnMO \
    CreativeAssistant \
    DeviceIntelligenceNetworkPrebuilt-U.32_V.7_playstore_astrea_20240725.00_RC01 \
    DMService \
    DreamlinerDreamsPrebuilt_100894 \
    DreamlinerPrebuilt_22000020 \
    DreamlinerUpdater \
    GoogleCamera \
    GoogleDialer \
    GoogleOneTimeInitializer \
    GoogleRestorePrebuilt-v603273 \
    HealthIntelligencePrebuilt-1762 \
    ImsServiceEntitlement \
    MaestroPrebuilt \
    MyVerizonServices \
    OemDmTrigger \
    OdadPrebuilt \
    PartnerSetupPrebuilt \
    Phonesky \
    PixelLiveWallpaperPrebuilt-25000013 \
    PixelSupportPrebuilt \
    PrebuiltBugle \
    SCONE-v37764 \
    ScribePrebuilt_v7.0.633113815 \
    SearchSelectorPrebuilt \
    SettingsIntelligenceGooglePrebuilt \
    SetupWizardPrebuilt \
    TetheringEntitlement \
    TurboPrebuilt \
    WallpaperEffect \
    VzwOmaTrigger \
    WeatherPixelPrebuilt_24D1 \
    WfcActivation

# system/app
PRODUCT_PACKAGES += \
    CaptivePortalLoginGoogle \
    GoogleExtShared \
    GooglePrintRecommendationService

# system/priv-app
PRODUCT_PACKAGES += \
    DocumentsUIGoogle \
    GooglePackageInstaller \
    NetworkStackGoogle \
    TagGoogle

# system_ext/app
PRODUCT_PACKAGES += \
    EmergencyInfoGoogleNoUi \
    Flipendo

# system_ext/priv-app
PRODUCT_PACKAGES += \
    AvatarPickerGoogle \
    CarrierSetup \
    ConnectivityThermalPowerManager \
    DeviceConnectivityServicePrebuilt \
    GoogleFeedback \
    GoogleServicesFramework \
    grilservice \
    NexusLauncherRelease \
    RilConfigService \
    SetupWizardPixelPrebuilt \
    QuickAccessWallet \
    StorageManagerGoogle \
    TelephonyGoogle \
    TurboAdapter \
    WallpaperPickerGoogleRelease

# PrebuiltGmsCore
PRODUCT_PACKAGES += \
    PrebuiltGmsCoreVic \
    PrebuiltGmsCoreVic_AdsDynamite.uncompressed \
    PrebuiltGmsCoreVic_CronetDynamite.uncompressed \
    PrebuiltGmsCoreVic_DynamiteLoader.uncompressed \
    PrebuiltGmsCoreVic_DynamiteModulesA.uncompressed  \
    PrebuiltGmsCoreVic_DynamiteModulesC.uncompressed  \
    PrebuiltGmsCoreVic_GoogleCertificates.uncompressed  \
    PrebuiltGmsCoreVic_MapsDynamite.uncompressed  \
    PrebuiltGmsCoreVic_MeasurementDynamite.uncompressed  \
    AndroidPlatformServices \
    MlkitBarcodeUIPrebuilt \
    VisionBarcodePrebuilt

# Pixel Release Configuration
ifeq ($(RELEASE_PIXEL_2021_ENABLED),true)
PRODUCT_PACKAGES += \
    DevicePersonalizationPrebuiltPixel2021-aiai_20240329.00_RC16
else ifeq ($(RELEASE_PIXEL_2022_ENABLED),true)
PRODUCT_PACKAGES += \
    DevicePersonalizationPrebuiltPixel2022-aiai_20240329.00_RC16
else ifeq ($(RELEASE_PIXEL_2023_ENABLED),true)
PRODUCT_PACKAGES += \
    DevicePersonalizationPrebuiltPixel2023-aiai_20240329.00_RC16
else ifeq ($(RELEASE_PIXEL_2024_ENABLED),true)
PRODUCT_PACKAGES += \
    DevicePersonalizationPrebuiltPixel2024-aiai_20240329.00_RC16
else
# Fallback to the latest AiAi available
PRODUCT_PACKAGES += \
    DevicePersonalizationPrebuiltPixel2022-aiai_sdk35_20240311.DF2_p4
endif

# Safety Information
#PRODUCT_PACKAGES += \
#    SafetyRegulatoryInfo

$(call inherit-product, vendor/gms/product/blobs/product_blobs.mk)
$(call inherit-product, vendor/gms/system/blobs/system_blobs.mk)
$(call inherit-product, vendor/gms/system_ext/blobs/system-ext_blobs.mk)

