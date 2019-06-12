ARCHS = armv7 arm64 arm64e
DEBUG = 0


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = LSTextChanger
LSTextChanger_FILES = Tweak.xm
LSTextChanger_EXTRA_FRAMEWORKS += Cephei

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += lstextchangerprefs
include $(THEOS_MAKE_PATH)/aggregate.mk
