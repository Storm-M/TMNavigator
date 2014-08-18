//
//  TMNavigatorDirect.m
//  TMNavigatorDirect
//
//  Created by Storm on 14-8-13.
//  Copyright (c) 2014年 Skeleton. All rights reserved.
//

#import "TMNavigatorDirect.h"


@interface TMNavigatorDirect ()
{
    NSMutableDictionary *_dic;
}

@end

@implementation TMNavigatorDirect

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        _dic = [NSMutableDictionary dictionary];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

+ (TMNavigatorDirect *)sharedInstance
{
    static id instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        UIViewController *vc = [UIViewController new];
        vc.view.backgroundColor = [UIColor redColor];
        instance = [[[self class] alloc] initWithRootViewController:vc];
    });
    return instance;
}

- (void)registerViewController:(Class)class withUrl:(NSString *)url
{
    [_dic setObject:class forKey:url];
}

- (UIViewController *)openUrl:(NSString *)url
{
    UIViewController *vc = [self viewControllerWithUrl:url];
    [self pushViewController:vc animated:YES];
    return vc;
}

- (UIViewController *)viewControllerWithUrl:(NSString *)url
{
    Class class = [_dic objectForKey:url];
    if (!class)
    {
        class = [UIViewController class];
    }
    
    UIViewController *vc = [[class alloc] init];
    
    return vc;
}

@end
