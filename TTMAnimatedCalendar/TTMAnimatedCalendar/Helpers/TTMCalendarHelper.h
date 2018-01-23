//
//  TTMCalendarHelper.h
//  TTMAnimatedCalenadarDemo
//
//  Created by shuichi on 2/24/14.
//  Copyright (c) 2014 Shuichi Tsutsumi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TTMCalendarHelper : NSObject

+ (NSDate *)dateWithYear:(NSUInteger)year month:(NSUInteger)month day:(NSUInteger)day;
+ (NSUInteger)numberOfDaysInMonth:(NSUInteger)month year:(NSUInteger)year;
+ (NSUInteger)numberOfWeeksInMonth:(NSUInteger)month year:(NSUInteger)year;

@end
