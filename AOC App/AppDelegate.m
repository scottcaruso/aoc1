//
//  AppDelegate.m
//  AOC App
//
//  Created by Scott Caruso on 10/23/12.
//  Copyright (c) 2012 Scott Caruso. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];

    int temp = 34;
    NSLog(@"temp=%d",temp);
    signed int integerSigned = -15433;
    unsigned int intengerUnsigned = 12884;
    char numberVariable = 0;
    char letterVariable = 'c';
    float percentageVariable = 0.5f;
    double bigPercentageVariable = 0.243543252435;
    bool trueBooleanValue = true;
    bool falseBooleanValue = false;

    int seven = 7;
    int two = 2;

    float result = (float)seven /(float)two;

    float celcius = 23.0f;
    NSLog(@"celcius=%.2f", celcius);
    
    float resulttwo = celcius * ((float)9/5) + 32;

    //boolean logic practice
    int torch = 12;
    if (torch == 0){
        NSLog(@"you have no torches");
    } else if (torch == 1){
        NSLog(@"you have one torch");
    } else {
        NSLog(@"i have no idea how many torches you have");
    }
    
    return YES;
}



- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end