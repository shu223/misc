//
//  NSDate+TTMCalendar.m
//  TTMAnimatedCalenadarDemo
//
//  Created by shuichi on 2/24/14.
//  Copyright (c) 2014 Shuichi Tsutsumi. All rights reserved.
//

#import "NSDate+TTMCalendar.h"

@implementation NSDate (TTMCalendar)

- (NSUInteger)month {

    NSCalendar *calender = [NSCalendar currentCalendar];
    NSDateComponents *components = [calender components:NSMonthCalendarUnit fromDate:self];
    
    return components.month;
}

- (NSUInteger)day {
    
    NSCalendar *calender = [NSCalendar currentCalendar];
    NSDateComponents *components = [calender components:NSDayCalendarUnit fromDate:self];
    
    return components.day;
}

@end
