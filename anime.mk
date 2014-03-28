# Specify phone tech before including full_phone
$(call inherit-product, vendor/anime/configs/cdma.mk)

TARGET_KERNEL_CONFIG := gee_defconfig

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/anime/configs/common_full_phone.mk)
$(call inherit-product, vendor/anime/configs/common.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/lge/gee/anime_gee.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := gee
PRODUCT_NAME := anime_gee
PRODUCT_BRAND := LGE
PRODUCT_MODEL := LG-gee
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=google/occam/mako:4.2.2/JDQ39/573038:user/release-keys PRIVATE_BUILD_DESC="occam-user 4.2.2 JDQ39 573038 release-keys"

# Enable Torch
PRODUCT_PACKAGES += Torch
