//
//  UIWindow+UITouch.m
//  TMNavigatorDirect
//
//  Created by Storm on 14-8-13.
//  Copyright (c) 2014年 Skeleton. All rights reserved.
//

#import "UIWindow+UITouch.h"

@implementation UIWindow(Touch)

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"touchesBegan");
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"touchesMoved");
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"touchesEnded");
}

- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"touchesCancelled");
}

@end
