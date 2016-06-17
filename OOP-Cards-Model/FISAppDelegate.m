//  FISAppDelegate.m

#import "FISAppDelegate.h"
#import "FISCard.h"
#import "FISCardDeck.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
//    FISCard *defaultCard = [[FISCard alloc] init];
//    NSLog(@"%@", [defaultCard description]);
    
    FISCardDeck *newCardDeck = [[FISCardDeck alloc] init];
    NSLog(@"%@", newCardDeck.description);
    
    NSLog(@"The next card drawn is: %@",[newCardDeck drawNextCard]);
    
    [newCardDeck shuffleRemainingCards];
    
    NSLog(@"Let's draw another card, this card is: %@", [newCardDeck drawNextCard]);
    
    NSMutableString *dealtCards = [[NSMutableString alloc] initWithString:@"The dealt cards are:\n"];
    for(FISCard *dCards in newCardDeck.dealtCards){
        [dealtCards appendFormat:@"%@ ", dCards.cardLabel];
    }
    
    NSMutableString *remainingCards = [[NSMutableString alloc] initWithString: @"The remaining cards in the deck are: \n"];
    for(FISCard *rCards in newCardDeck.remainingCards){
        [remainingCards appendFormat:@"%@ ", rCards.cardLabel];
    }
    
    NSLog(@"\n////////////// t e s t i n g <3 ////////////// \n\n%@\n\n%@", dealtCards, remainingCards);
    
    
    return YES;
}

@end
