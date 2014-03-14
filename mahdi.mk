## Specify phone tech before including full_phone
$(call inherit-product, vendor/mahdi/configs/cdma.mk)

# Copy device specific prebuilt files.
PRODUCT_COPY_FILES += \
    vendor/mahdi/prebuilt/bootanimations/BOOTANIMATION-1280x768.zip:system/media/bootanimation.zip

TARGET_KERNEL_CONFIG := gee_defconfig

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/mahdi/configs/common_full_phone.mk)
$(call inherit-product, vendor/mahdi/configs/common.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/lge/gee/mahdi_gee.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := gee
PRODUCT_NAME := mahdi_gee
PRODUCT_BRAND := LGE
PRODUCT_MODEL := LG-gee
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=google/occam/mako:4.2.2/JDQ39/573038:user/release-keys PRIVATE_BUILD_DESC="occam-user 4.2.2 JDQ39 573038 release-keys"

# Enable Torch
PRODUCT_PACKAGES += Torch
