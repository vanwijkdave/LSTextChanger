

BOOL isEnabled = true;
NSString *lsText = @"Labels";


%group Tweak
%hook SBUICallToActionLabel


- (void)setText:(id)arg1 forLanguage:(id)arg2 animated:(bool)arg3 {

	 
	NSDictionary *iosgods = [NSDictionary dictionaryWithContentsOfFile:[NSString stringWithFormat:@"/var/mobile/Library/Preferences/com.daveapps.lstextchangerprefs.plist"]];
	lsText = [[iosgods objectForKey:@"kCustomText"] stringValue];
	return %orig(lsText, arg2, arg3);
	
}

%end
%end



%ctor {
	NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults]
	persistentDomainForName:@"com.daveapps.lstextchangerprefs"];


		id isEnabledPref = [bundleDefaults valueForKey:@"isEnabledPref"];

		if ([isEnabledPref isEqual:@1]) {
				%init(Tweak);
		} else {
			isEnabled = false;
		}

}