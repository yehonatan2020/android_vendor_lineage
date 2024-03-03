# Inherit full common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

# Include Lineage LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/lineage/overlay/dictionaries
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/lineage/overlay/dictionaries

# Enable support of one-handed mode
PRODUCT_PRODUCT_PROPERTIES += \
    ro.support_one_handed_mode?=true

# NavigationBarMode
PRODUCT_PACKAGES += \
    NavigationBarMode2ButtonOverlay \

# Use 2-button navbar by default
PRODUCT_PRODUCT_PROPERTIES += \
    ro.boot.vendor.overlay.theme=com.android.internal.systemui.navbar.twobutton

# Enable blur
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.sf.blurs_are_expensive=1 \
    ro.surface_flinger.supports_background_blur=1 \

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
dalvik.vm.checkjini=false \
ro.kernel.android.checkjni=0 \
ro.kernel.checkjni=0 \
ro.config.nocheckin=1 \
debug.systemui.latency_tracking=0 \
persist.sample.eyetracking.log=0 \
ro.com.google.locationfeatures=0 \
ro.com.google.networklocation=0 \
media.metrics.enabled=0 \
sys.debug.watchdog=0 \
logd.statistics=0 \
media.metrics=0 \
config.stats=0 \
persist.sys.loglevel=0 \
sys.log.app=0 \
persist.traced.enable=0 \
logd.statistics=0 \
persist.sample.eyetracking.log=0 \
debug.atrace.tags.enableflags=0 \
debugtool.anrhistory=0 \
ro.debuggable=1 \
profiler.debugmonitor=false \
profiler.launch=false \
profiler.hung.dumpdobugreport=false \
trustkernel.log.state=disable \
debug.mdpcomp.logs=0 \
debug.atrace.tags.enableflags=0 \
pm.sleep_mode=1 \
profiler.force_disable_ulog=true \
profiler.force_disable_err_rpt=true \
ro.logd.size.stats=0 \
debug.atrace.tags.enableflags=0 \
persist.service.pcsync.enable=0 \
persist.service.lgospd.enable=0

PRODUCT_PROPERTY_OVERRIDES += \
    camera.disable_zsl_mode=0 \
    persist.camera.HAL3.enabled=1 \
    persist.camera.ois.disable=0

$(call inherit-product, vendor/lineage/config/telephony.mk)
$(call inherit-product-if-exists, vendor/gapps/products/gapps.mk)
