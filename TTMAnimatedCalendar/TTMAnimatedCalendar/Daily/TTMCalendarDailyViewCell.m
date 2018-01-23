//
//  TTMCalendarDailyViewCell.m
//
//  Created by shuichi on 2/24/14.
//  Copyright (c) 2014 Shuichi Tsutsumi. All rights reserved.
//

#import "TTMCalendarDailyViewCell.h"


@interface TTMCalendarDailyViewCell ()
@end


@implementation TTMCalendarDailyViewCell

+ (NSString *)cellIdentifier {
    
    return @"TTMCalendarDailyViewCell";
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if (self) {
        
        UIView *backgroundView = [[UIView alloc] initWithFrame:self.bounds];
        backgroundView.backgroundColor = [UIColor lightGrayColor];
        [self setBackgroundView:backgroundView];
        
        backgroundView = [[UIView alloc] initWithFrame:self.bounds];
        backgroundView.backgroundColor = [UIColor orangeColor];
        [self setSelectedBackgroundView:backgroundView];
        
        CGRect labelFrame = self.bounds;
        labelFrame.size = CGSizeMake(labelFrame.size.width, labelFrame.size.width);
        UILabel *label = [[UILabel alloc] initWithFrame:labelFrame];
        label.backgroundColor = [UIColor clearColor];
        label.textAlignment = NSTextAlignmentCenter;
        label.font = [UIFont systemFontOfSize:13.0];
        label.layer.borderColor = [UIColor blackColor].CGColor;
        label.layer.borderWidth = 2.0;
        label.autoresizingMask = UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight;
        [self.contentView addSubview:label];
        _label = label;
    }
    
    return self;
}

@end
