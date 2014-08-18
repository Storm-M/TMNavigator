//
//  TMNavigatorDirectViewController.h
//  TMNavigatorDirect
//
//  Created by Storm on 14-8-13.
//  Copyright (c) 2014年 Skeleton. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TMNavigatorDirect : UINavigationController

+ (TMNavigatorDirect *)sharedInstance;

- (void)registerViewController:(Class)class withUrl:(NSString *)url;

- (UIViewController *)openUrl:(NSString *)url;

- (UIViewController *)viewControllerWithUrl:(NSString *)url;

@end
