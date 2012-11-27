//
//  AppDelegate.m
//  MovieClipDemo
//
//  Created by binwong on 12-10-22.
//  Copyright (c) 2012年 binwong. All rights reserved.
//

#import "AppDelegate.h"
#import "UIMovieClip.h"

@implementation AppDelegate

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    //MovieClip
    UIMovieClip *mc = [[UIMovieClip alloc] initWithFrame:CGRectMake(50, 50, self.window.frame.size.width, self.window.frame.size.height)];
    mc.imagesData = [[NSMutableArray alloc] init];
    for (int i = 1; i<=108; i++) {
        NSString *imageName;
        if (i < 10) {
            imageName = [[NSString alloc] initWithFormat:@"Elisabeth000%d.png", i];
        } else if (i < 100) {
            imageName = [[NSString alloc] initWithFormat:@"Elisabeth00%d.png", i];
        } else {
            imageName = [[NSString alloc] initWithFormat:@"Elisabeth0%d.png", i];
        }
        [mc.imagesData addObject:imageName];
    }
    [mc play];
    [self.window addSubview:mc];
    
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
