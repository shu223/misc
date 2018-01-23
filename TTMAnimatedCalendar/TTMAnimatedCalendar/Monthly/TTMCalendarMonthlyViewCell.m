//
//  TTMCalendarMonthlyViewCell.m
//
//  Created by shuichi on 2/24/14.
//  Copyright (c) 2014 Shuichi Tsutsumi. All rights reserved.
//

#import "TTMCalendarMonthlyViewCell.h"


@interface TTMCalendarMonthlyViewCell ()
@end


@implementation TTMCalendarMonthlyViewCell

+ (NSString *)cellIdentifier {
    
    return @"TTMCalendarMonthlyViewCell";
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if (self) {
        
//        CGRect frame = self.bounds;
//        frame.size = CGSizeMake(frame.size.width, frame.size.width);
//
//        UIView *backgroundView = [[UIView alloc] initWithFrame:frame];
//        backgroundView.backgroundColor = [UIColor whiteColor];
//        [self setBackgroundView:backgroundView];
//        
//        backgroundView = [[UIView alloc] initWithFrame:frame];
//        backgroundView.backgroundColor = [UIColor orangeColor];
//        [self setSelectedBackgroundView:backgroundView];
//        
//        self.label = [[UILabel alloc] initWithFrame:frame];
//        self.label.backgroundColor = [UIColor clearColor];
//        self.label.layer.borderColor = [UIColor blackColor].CGColor;
//        self.label.layer.borderWidth = 1.0;
//        self.label.textAlignment = NSTextAlignmentCenter;
//        self.label.font = [UIFont systemFontOfSize:13.0];
//        self.label.autoresizingMask = UIViewAutoresizingNone;
//        [self.contentView addSubview:self.label];
        
        UIView *backgroundView = [[UIView alloc] initWithFrame:self.bounds];
        backgroundView.backgroundColor = [UIColor whiteColor];
        [self setBackgroundView:backgroundView];
        
        backgroundView = [[UIView alloc] initWithFrame:self.bounds];
        backgroundView.backgroundColor = [UIColor orangeColor];
        [self setSelectedBackgroundView:backgroundView];
        
        self.label = [[UILabel alloc] initWithFrame:self.bounds];
        self.label.backgroundColor = [UIColor clearColor];
        self.label.layer.borderColor = [UIColor blackColor].CGColor;
        self.label.layer.borderWidth = 1.0;
        self.label.textAlignment = NSTextAlignmentCenter;
        self.label.font = [UIFont systemFontOfSize:13.0];
        self.label.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        [self.contentView addSubview:self.label];
    }
    return self;
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
