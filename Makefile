TARGET := iphone:clang:latest:12.2
INSTALL_TARGET_PROCESSES = SpringBoard


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = GameShut

GameShut_FILES = $(shell find Sources/GameShut -name '*.swift') $(shell find Sources/GameShutC -name '*.m' -o -name '*.c' -o -name '*.mm' -o -name '*.cpp')
GameShut_SWIFTFLAGS = -ISources/GameShutC/include
GameShut_CFLAGS = -fobjc-arc -ISources/GameShutC/include
GameShut_PRIVATE_FRAMEWORKS += GameCenterUI

include $(THEOS_MAKE_PATH)/tweak.mk
