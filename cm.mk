# CM Stuff
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Device Stuff
$(call inherit-product, device/htc/holiday/holiday.mk)

# Release name
PRODUCT_RELEASE_NAME := holiday

# Bootanimation
TARGET_BOOTANIMATION_NAME := 540

# Device naming
PRODUCT_DEVICE := holiday
PRODUCT_NAME := cm_holiday
PRODUCT_BRAND := htc
PRODUCT_MODEL := Vivid 4G
PRODUCT_MANUFACTURER := HTC

# Set Build Bingerprint / ID / Product Name
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_holiday BUILD_FINGERPRINT=cingular_us/htc_holiday/holiday:4.0.3/IML74K/302737.56:user/release-keys PRIVATE_BUILD_DESC="3.26.502.56 CL302737 release-keys"
