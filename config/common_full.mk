# Inherit common Lineage stuff
PRODUCT_SIZE := full

# Extra cmdline tools
PRODUCT_PACKAGES += \
    unrar \
    zstd

                                                                                                                                                                     ifeq ($(WITH_GAPPS),true)
$(call inherit-product, vendor/lineage/config/common.mk)
else
$(call inherit-product, vendor/lineage/config/common_mobile.mk)

# Recorder
PRODUCT_PACKAGES += \
    Recorder
endif
