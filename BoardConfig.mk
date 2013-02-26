# BoardConfig.mk
#
# Product-specific compile-time definitions.
#

# same sa mini-armv7-a-neon except HAL
include device/generic/armv7-a-neon/BoardConfig.mk

# Build OpenGLES emulation libraries
BUILD_EMULATOR_OPENGL := true

BOARD_EGL_CFG := device/generic/mini-emulator-armv7-a-neon/egl.cfg

