//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

-(NSString *)stringWithDeliLine:(NSArray *)deliLine
{
    NSMutableString *announceDeliLine = [[NSMutableString alloc]init];
    if ([deliLine count] > 0) {
        announceDeliLine = [@"The line is:" mutableCopy];
        for (NSUInteger i = 0; i < [deliLine count]; i++) {
            NSInteger numberInLine = i + 1;
            NSString *customerInLine = deliLine[i];
            [announceDeliLine appendFormat:@"\n%li. %@", numberInLine,customerInLine];
        }
    }
    else if ([deliLine count] == 0){
        announceDeliLine = [@"The line is currently empty." mutableCopy];
    }
    return announceDeliLine;
}


-(void)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine
{
    [deliLine addObject:name];
}


-(NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine
{
    NSString *nextCustomer = deliLine[0];
    [deliLine removeObjectAtIndex:0];
    return nextCustomer;
}


@end
