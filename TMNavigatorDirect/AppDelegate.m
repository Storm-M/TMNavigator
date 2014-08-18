//
//  AppDelegate.m
//  TMNavigatorDirect
//
//  Created by Storm on 14-8-13.
//  Copyright (c) 2014年 Skeleton. All rights reserved.
//

#import "AppDelegate.h"
#import "TMNavigatorDirect.h"
#import "ViewController.h"
#import "MyTableViewViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    TMNavigatorDirect *nv = [TMNavigatorDirect sharedInstance];
    self.window.rootViewController = nv;
    [nv registerViewController:[ViewController class] withUrl:@"TM://test"];
    [nv registerViewController:[MyTableViewViewController class] withUrl:@"TM://tableView"];
    
    UIViewController *vc = nv.viewControllers[0];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button setTitle:@"dfa" forState:UIControlStateNormal];
    button.frame = CGRectMake(100, 100, 100, 100);
    [button addTarget:self action:@selector(pushVC) forControlEvents:UIControlEventTouchUpInside];
    [vc.view addSubview:button];
    
    [self performSelector:@selector(pushVC) withObject:nil afterDelay:3];
    return YES;
}

- (void)pushVC
{
    [[TMNavigatorDirect sharedInstance] openUrl:@"TM://test"];
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
