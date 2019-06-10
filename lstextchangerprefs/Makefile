ARCHS = armv7 arm64 arm64e
DEBUG = 1

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = LSTextChangerPrefs
LSTextChangerPrefs_FILES = LSTEXTPREFRootListController.m
LSTextChangerPrefs_INSTALL_PATH = /Library/PreferenceBundles
LSTextChangerPrefs_FRAMEWORKS = UIKit
LSTextChangerPrefs_PRIVATE_FRAMEWORKS = Preferences
LSTextChangerPrefs_EXTRA_FRAMEWORKS = Cephei CepheiPrefs

ARCHS = arm64 arm64e



include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/LSTextChangerPrefs.plist$(ECHO_END)
