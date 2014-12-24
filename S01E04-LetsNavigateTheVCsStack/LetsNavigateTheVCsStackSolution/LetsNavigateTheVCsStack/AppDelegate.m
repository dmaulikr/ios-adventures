//
//  AppDelegate.m
//  LetsNavigateTheVCsStack
//
//  Created by Mathieu Tan on 12/23/14.
//  Copyright (c) 2014 mataejoon. All rights reserved.
//

#import "AppDelegate.h"

#import "RootViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    UINavigationController *navVC = [UINavigationController new];
    self.window.rootViewController = navVC;
    
//    UIViewController *vc1 = [UIViewController new];
//    vc1.title = @"First View Controller";
//    UIView *view1 = [[UIView alloc] initWithFrame:self.window.bounds];
//    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(self.window.frame.origin.x + 10, self.window.frame.size.height / 2, 320, 44)];
//    label.text = @"This is the content of the First View Controller";
//    [view1 addSubview:label];
//    vc1.view = view1;
    
    RootViewController *rootVc = [RootViewController new];
    [navVC pushViewController:rootVc animated:NO];
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
