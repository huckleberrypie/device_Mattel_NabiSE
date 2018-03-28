TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a9

BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/Mattel/NabiSE/kernel

BOARD_MKBOOTIMG_ARGS := --base 80000000 --pagesize 2048 --kernel_offset 00008000 --ramdisk_offset 04000000 --tags_offset 06900000    --board 3.0.10 
#Dem magic numbers tho.

#MTK common twrp flags
TW_NO_EXFAT := true
TWHAVE_SELINUX := true
#TW_USE_TOOLBOX := true
TW_NO_EXFAT_FUSE := true
TW_THEME := portrait_mdpi
#RECOVERY_SDCARD_ON_DATA := true
# Max brightness to prevent display damage
TW_MAX_BRIGHTNESS := 160
# Default brightness for TWRP
TW_DEFAULT_BRIGHTNESS := 120
TW_INCLUDE_FB2PNG := true
TWRP_INCLUDE_LOGCAT := true
DEVICE_RESOLUTION := 600x1024
#RECOVERY_TOUCHSCREEN_SWAP_XY := true
#RECOVERY_TOUCHSCREEN_FLIP_X := true
#RECOVERY_TOUCHSCREEN_FLIP_Y := true
TWRP_EVENT_LOGGING := true
#The SE comes with encryption permanently enabled by default.
#Perhaps patching the kernel to defeat forced decrypt would do the trick
#Problem is whilst Magisk has that ability, it is seemingly unable to edit boot.img for whatever reason
#Magisk Manager churns out an apparently corrupted image
TW_INCLUDE_CRYPTO := true
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/mt_usb/gadget/lun%d/file"
BOARD_CUSTOM_BOOTIMG_MK := device/Mattel/NabiSE/boot.mk
