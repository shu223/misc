//
//  TTMViewController.m
//  TTMAnimatedCalenadarDemo
//
//  Created by shuichi on 2/24/14.
//  Copyright (c) 2014 Shuichi Tsutsumi. All rights reserved.
//

#import "TTMViewController.h"
#import "TTMCalendarViewController.h"
//#import "PDTSimpleCalendarViewFlowLayout.h"


@interface TTMViewController ()
@end

@implementation TTMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


// =============================================================================
#pragma mark - IBAction

- (IBAction)showCalendar:(UIButton *)sender {

    TTMCalendarViewController *calendarCtr = [[TTMCalendarViewController alloc] init];;

    [self presentViewController:calendarCtr
                       animated:YES
                     completion:^{
                     }];
}

@end
