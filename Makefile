TARGET = iphone:clang:latest:14.0
ARCHS = arm64 arm64e
THEOS_DEVICE_IP = 127.0.0.1
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = AlertBlocker
AlertBlocker_FILES = Tweak.xm
AlertBlocker_FRAMEWORKS = UIKit
include $(THEOS_MAKE_PATH)/tweak.mk
