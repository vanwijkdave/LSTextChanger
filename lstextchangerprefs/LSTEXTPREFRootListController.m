#include "LSTEXTPREFRootListController.h"
#include <spawn.h>



#define UIColorFromRGB(rgbValue) \
[UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0x00FF00) >>  8))/255.0 \
blue:((float)((rgbValue & 0x0000FF) >>  0))/255.0 \
alpha:1.0]

@implementation LSTEXTPREFRootListController


- (instancetype)init {
    self = [super init];
    
    if (self) {
        HBAppearanceSettings *appearanceSettings = [[HBAppearanceSettings alloc] init];
        appearanceSettings.tintColor = UIColorFromRGB(0xB24592);
        appearanceSettings.tableViewCellSeparatorColor = [UIColor colorWithWhite:0 alpha:0];
        self.hb_appearanceSettings = appearanceSettings;
    }
    
    return self;
}


- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"Root" target:self] retain];
	}

	return _specifiers;
}

- (void)link {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://paypal.me/vanwijkdave"]];
}
- (void)twitterDave {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://twitter.com/davewijk"]];
}
- (void)twitterApps {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://twitter.com/daveapps"]];
}
-(void)respring {
    
    NSTask *t = [[[NSTask alloc] init] autorelease];
    [t setLaunchPath:@"/usr/bin/killall"];
    [t setArguments:[NSArray arrayWithObjects:@"backboardd", nil]];
    [t launch];
}

@end
