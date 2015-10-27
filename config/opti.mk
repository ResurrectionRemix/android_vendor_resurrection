# Written for UBER toolchains
# Find host os

# Set GCC colors
export GCC_COLORS := 'error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

UNAME := $(shell uname -s)

ifeq (Linux,$(UNAME))
  HOST_OS := linux
endif

ifeq (linux,$(HOST_OS))
ifeq (arm,$(TARGET_ARCH))
# Path to toolchain
AND_TC_PATH := prebuilts/gcc/$(HOST_PREBUILT_TAG)/arm/arm-linux-androideabi-$(TARGET_TC_ROM)
AND_TC_VERSION := $(shell $(AND_TC_PATH)/bin/arm-linux-androideabi-gcc --version 2>&1)
AND_TC_VERSION_NUMBER := $(shell $(AND_TC_PATH)/bin/arm-linux-androideabi-gcc -dumpversion 2>&1)

# Find strings in version info
ifneq ($(filter (UBERTC%),$(AND_TC_VERSION)),)
AND_TC_NAME := UBERTC
else
AND_TC_NAME := GCC
endif

AND_TC_DATE := $(filter 20150% 20151% ,$(AND_TC_VERSION))
ifeq ($(AND_TC_DATE),)
	AND_TC_DATE := $(filter 2014% ,$(AND_TC_VERSION))
endif

ADDITIONAL_BUILD_PROPERTIES += \
    ro.rr.android=($(AND_TC_NAME)-$(AND_TC_VERSION_NUMBER))-$(AND_TC_DATE)

KERNEL_TC_PATH := prebuilts/gcc/$(HOST_PREBUILT_TAG)/arm/arm-eabi-$(TARGET_TC_KERNEL)

KERNEL_TC_VERSION := $(shell $(KERNEL_TC_PATH)/bin/arm-eabi-gcc --version 2>&1)
KERNEL_TC_VERSION_NUMBER := $(shell $(KERNEL_TC_PATH)/bin/arm-eabi-gcc -dumpversion 2>&1)

# Find strings in version info
ifneq ($(filter (UBERTC%),$(KERNEL_TC_VERSION)),)
KERNEL_TC_NAME := UBERTC
else
KERNEL_TC_NAME := GCC
endif

KERNEL_TC_DATE := $(filter 20150% 20151% ,$(KERNEL_TC_VERSION))

ifeq ($(KERNEL_TC_DATE),)
	KERNEL_TC_DATE := $(filter 2014% ,$(KERNEL_TC_VERSION))
endif

ADDITIONAL_BUILD_PROPERTIES += \
    ro.rr.kernel=($(KERNEL_TC_NAME)-$(KERNEL_TC_VERSION_NUMBER))-$(KERNEL_TC_DATE)

endif

ifeq (arm64,$(TARGET_ARCH))
# Path to toolchain
UBER_AND_PATH := prebuilts/gcc/$(HOST_PREBUILT_TAG)/aarch64/aarch64-linux-android-4.8
UBER_AND := $(shell $(UBER_AND_PATH)/bin/aarch64-linux-android-gcc --version)

# Find strings in version info
ifneq ($(filter (UBERTC%),$(UBER_AND)),)
UBER_AND_NAME := $(filter (UBERTC%),$(UBER_AND))
UBER_AND_DATE := $(filter 20150% 20151%,$(UBER_AND))
UBER_AND_VERSION := $(UBER_AND_NAME)-$(UBER_AND_DATE)
ADDITIONAL_BUILD_PROPERTIES += \
    ro.rr.android=$(UBER_AND_VERSION)
endif
endif

ifeq (true,$(RR_STRICT))
OPT1 := (strict)
endif

ifeq (true,$(RR_GRAPHITE))
OPT2 := (graphite)
endif

ifeq (true,$(RR_KRAIT))
OPT3 := ($(TARGET_CPU_VARIANT))
endif

ifeq (true,$(RR_PIPE))
OPT4 := (pipe)
endif

ifeq (true,$(RR_O3))
OPT5 := (O3)
endif

GCC_OPTIMIZATION_LEVELS := $(OPT1)$(OPT2)$(OPT3)$(OPT4)$(OPT5)
ifneq (,$(GCC_OPTIMIZATION_LEVELS))
ADDITIONAL_BUILD_PROPERTIES += \
    ro.rr.flags=$(GCC_OPTIMIZATION_LEVELS)
endif
endif
