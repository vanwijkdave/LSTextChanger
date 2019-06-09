#line 1 "Tweak.xm"


BOOL isEnabled = true;
NSString *lsText = @"Labels";



#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class SBUICallToActionLabel; 


#line 7 "Tweak.xm"
static void (*_logos_orig$Tweak$SBUICallToActionLabel$setText$forLanguage$animated$)(_LOGOS_SELF_TYPE_NORMAL SBUICallToActionLabel* _LOGOS_SELF_CONST, SEL, id, id, bool); static void _logos_method$Tweak$SBUICallToActionLabel$setText$forLanguage$animated$(_LOGOS_SELF_TYPE_NORMAL SBUICallToActionLabel* _LOGOS_SELF_CONST, SEL, id, id, bool); 



static void _logos_method$Tweak$SBUICallToActionLabel$setText$forLanguage$animated$(_LOGOS_SELF_TYPE_NORMAL SBUICallToActionLabel* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id arg2, bool arg3) {

	 
	NSDictionary *iosgods = [NSDictionary dictionaryWithContentsOfFile:[NSString stringWithFormat:@"/var/mobile/Library/Preferences/com.daveapps.lstextchangerprefs.plist"]];
	lsText = [[iosgods objectForKey:@"kCustomText"] stringValue];
	return _logos_orig$Tweak$SBUICallToActionLabel$setText$forLanguage$animated$(self, _cmd, lsText, arg2, arg3);
	
}






static __attribute__((constructor)) void _logosLocalCtor_b82363af(int __unused argc, char __unused **argv, char __unused **envp) {
	NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults]
	persistentDomainForName:@"com.daveapps.lstextchangerprefs"];


		id isEnabledPref = [bundleDefaults valueForKey:@"isEnabledPref"];

		if ([isEnabledPref isEqual:@1]) {
				{Class _logos_class$Tweak$SBUICallToActionLabel = objc_getClass("SBUICallToActionLabel"); MSHookMessageEx(_logos_class$Tweak$SBUICallToActionLabel, @selector(setText:forLanguage:animated:), (IMP)&_logos_method$Tweak$SBUICallToActionLabel$setText$forLanguage$animated$, (IMP*)&_logos_orig$Tweak$SBUICallToActionLabel$setText$forLanguage$animated$);}
		} else {
			isEnabled = false;
		}

}
