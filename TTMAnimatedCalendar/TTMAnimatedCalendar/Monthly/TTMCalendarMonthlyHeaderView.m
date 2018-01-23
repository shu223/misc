//
//  TTMCalendarMonthlyHeaderView.m
//  TTMAnimatedCalenadarDemo
//
//  Created by shuichi on 2/24/14.
//  Copyright (c) 2014 Shuichi Tsutsumi. All rights reserved.
//

#import "TTMCalendarMonthlyHeaderView.h"


const CGFloat kMarginHorizontal = 6.0;
const CGFloat kMarginVertical = 20.0;


@implementation TTMCalendarMonthlyHeaderView

+ (NSString *)headerIdentifier {
    
    return @"TTMCalendarMonthlyHeaderView";
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        CGFloat labelWidth = (frame.size.width - kMarginHorizontal * 2.0) / 7.0;
        
        NSArray *weekdays = @[
                              @"SUN",
                              @"MON",
                              @"TUE",
                              @"WED",
                              @"THU",
                              @"FRI",
                              @"SAT",
                              ];

        int i = 0;
        for (NSString *weekday in weekdays) {

            // xOffsetにはcenterのx座標を指定
            [self createLabelWithText:weekday
                              xOffset:kMarginHorizontal + labelWidth * i + labelWidth / 2.0];
            
            i++;
        }
    }
    return self;
}

- (void)createLabelWithText:(NSString *)text xOffset:(CGFloat)xOffset {

    UILabel *label = [[UILabel alloc] initWithFrame:CGRectZero];
    label.text = text;
    label.backgroundColor = [UIColor clearColor];
    label.textAlignment = NSTextAlignmentCenter;
    label.font = [UIFont systemFontOfSize:10.0];
    [label sizeToFit];
    
    label.center = CGPointMake(xOffset, kMarginVertical);
    
    [self addSubview:label];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
