//
//  ViewController.m
//  TMNavigatorDirect
//
//  Created by Storm on 14-8-13.
//  Copyright (c) 2014年 Skeleton. All rights reserved.
//

#import "ViewController.h"
#import "TMNavigatorDirect.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIPanGestureRecognizer *guesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panGestureRecognizer:)];
    //[self.view addGestureRecognizer:guesture];
    
    
    UITapGestureRecognizer *tapGuesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapGuesture:)];
    [self.view addGestureRecognizer:tapGuesture];
    
    self.view.backgroundColor = [UIColor whiteColor];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)panGestureRecognizer:(UIGestureRecognizer *)guesture
{
    NSLog(@"panGestureRecognizer");
}

- (void)tapGuesture:(UIGestureRecognizer *)guesture
{
    NSLog(@"tapGuesture");
    [[TMNavigatorDirect sharedInstance] openUrl:@"TM://tableView"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
