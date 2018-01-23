//
//  TTMCalendarHelper.m
//  TTMAnimatedCalenadarDemo
//
//  Created by shuichi on 2/24/14.
//  Copyright (c) 2014 Shuichi Tsutsumi. All rights reserved.
//

#import "TTMCalendarHelper.h"

@implementation TTMCalendarHelper


// =============================================================================
#pragma mark - Private

+ (NSRange)rangeOfUnit:(NSCalendarUnit)unit inMonth:(NSUInteger)month year:(NSUInteger)year {

    NSDate *date = [TTMCalendarHelper dateWithYear:year month:month day:1];
    
    NSCalendar *calender = [NSCalendar currentCalendar];
    
    NSRange range = [calender rangeOfUnit:unit
                                   inUnit:NSMonthCalendarUnit
                                  forDate:date];
    
    return range;
}


// =============================================================================
#pragma mark - Public

+ (NSDate *)dateWithYear:(NSUInteger)year month:(NSUInteger)month day:(NSUInteger)day {
    
    NSDateComponents *components = [[NSDateComponents alloc] init];
    [components setDay:day];
    [components setMonth:month];
    [components setYear:year];
    
    return [[NSCalendar currentCalendar] dateFromComponents:components];
}

+ (NSUInteger)numberOfDaysInMonth:(NSUInteger)month year:(NSUInteger)year {

    NSRange range = [TTMCalendarHelper rangeOfUnit:NSDayCalendarUnit
                                           inMonth:month
                                              year:year];
    
    NSUInteger count = range.length;
    
    return count;
}

+ (NSUInteger)numberOfWeeksInMonth:(NSUInteger)month year:(NSUInteger)year {

    NSRange range = [TTMCalendarHelper rangeOfUnit:NSWeekCalendarUnit
                                           inMonth:month
                                              year:year];
    NSUInteger count = range.length;
    
    return count;
}

@end
