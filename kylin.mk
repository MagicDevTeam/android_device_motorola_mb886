# Inherit device configuration for Droid Atrix HD.
$(call inherit-product, device/motorola/mb886/full_mb886.mk)

# Inherit some common KylinMod stuff.
$(call inherit-product, vendor/kylin/config/common_full_phone.mk)

# Inherit some common KylinMod stuff.
$(call inherit-product, vendor/kylin/config/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := km_mb886
PRODUCT_BRAND := ATT
PRODUCT_DEVICE := mb886
PRODUCT_MODEL := mb886
PRODUCT_MANUFACTURER := Motorola
PRODUCT_RELEASE_NAME := Motorola Atrix HD
PRODUCT_SFX := cn

# Boot animation
TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1280

UTC_DATE := $(shell date +%s)
DATE := $(shell date +%Y%m%d)

PRODUCT_BUILD_PROP_OVERRIDES += \
   PRODUCT_NAME=${PRODUCT_MODEL}_${PRODUCT_SFX} \
   BUILD_NUMBER=${DATE} \
   TARGET_DEVICE=${PRODUCT_DEVICE} \
   BUILD_FINGERPRINT=${PRODUCT_BRAND}/${PRODUCT_MODEL}_${PRODUCT_SFX}/${PRODUCT_DEVICE}:${PLATFORM_VERSION}/${BUILD_ID}/${DATE}:user/release-keys \
   PRIVATE_BUILD_DESC="${PRODUCT_DEVICE}-user ${PLATFORM_VERSION} ${BUILD_ID} ${DATE} release-keys" \
   PRODUCT_BRAND=${PRODUCT_BRAND} \
   BUILD_UTC_DATE=