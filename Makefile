TARGET := iphone:clang:latest:14.0
INSTALL_TARGET_PROCESSES = SpringBoard

# Для rootless-джейлбрейков (iOS 15+: Dopamine, palera1n rootless).
# Для rootful (checkra1n, unc0ver) удали следующую строку.
THEOS_PACKAGE_SCHEME = rootless

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = HapticIcons

HapticIcons_FILES = Tweak.x
HapticIcons_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
