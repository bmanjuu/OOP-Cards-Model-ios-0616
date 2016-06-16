//  FISAppDelegate.m

#import "FISAppDelegate.h"
#import "FISCard.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    FISCard *defaultCard = [[FISCard alloc] init];
    NSLog(@"%@", [defaultCard description]);
    
    return YES;
}

@end
