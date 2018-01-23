//
//  TTMCalendarViewController.m
//
//  Created by shuichi on 2/24/14.
//  Copyright (c) 2014 Shuichi Tsutsumi. All rights reserved.
//

#import "TTMCalendarViewController.h"
#import "TTMCalendarMonthlyViewController.h"
#import "TTMCalendarMonthlyLayout.h"


@interface TTMCalendarViewController ()
@property (nonatomic, strong) TTMCalendarMonthlyViewController *monthlyCtr;
@end


@implementation TTMCalendarViewController

- (id)initWithMonthlyLayout:(UICollectionViewLayout *)monthlyLayout
{
    UICollectionViewLayout *layout;
    
    if ([monthlyLayout isKindOfClass:[UICollectionViewLayout class]]) {
        
        layout = monthlyLayout;
    }
    else {
        
        layout = [[TTMCalendarMonthlyLayout alloc] init];
    }

    self.monthlyCtr = [[TTMCalendarMonthlyViewController alloc] initWithCollectionViewLayout:layout];
    self.monthlyCtr.useLayoutToLayoutNavigationTransitions = NO;

    self = [super initWithRootViewController:self.monthlyCtr
            ];
    if (self) {
    }
    return self;
}

- (id)init
{
    self = [self initWithMonthlyLayout:nil];
    if (self) {
    }
    return self;
}

- (id)initWithRootViewController:(UIViewController *)rootViewController
{
    self = [self init];
    if (self) {
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.monthlyCtr setDate:[NSDate date]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
