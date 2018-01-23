//
//  TTMCalendarMonthlyViewController.h
//
//  Created by shuichi on 2/24/14.
//  Copyright (c) 2014 Shuichi Tsutsumi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TTMCalendarMonthlyViewController : UICollectionViewController

@property (nonatomic, strong) NSDateFormatter *headerDateFormatter;

- (void)setDate:(NSDate *)date;

@end
