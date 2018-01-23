//  Modified from UICountingLabel
//  https://github.com/dataxpress/UICountingLabel
//  Modified by Shuichi Tsutsumi on 2015/03/12.


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


typedef NS_ENUM(NSUInteger, TTMLabelCountingMethod) {
    TTMLabelCountingMethodEaseInOut,
    TTMLabelCountingMethodEaseIn,
    TTMLabelCountingMethodEaseOut,
    TTMLabelCountingMethodLinear
};

typedef NSString* (^TTMCountingLabelFormatBlock)(float value);
typedef NSAttributedString* (^TTMCountingLabelAttributedFormatBlock)(float value);


@interface TTMCountingLabel : UILabel

@property (nonatomic, strong) NSString *format;
@property (nonatomic, assign) TTMLabelCountingMethod method;
@property (nonatomic, assign) NSTimeInterval animationDuration;
@property (nonatomic, assign) float easingRate; // default: 3.0f

@property (nonatomic, copy) TTMCountingLabelFormatBlock formatBlock;
@property (nonatomic, copy) TTMCountingLabelAttributedFormatBlock attributedFormatBlock;
@property (nonatomic, copy) void (^completionBlock)();

- (void)countFrom:(float)startValue to:(float)endValue;
- (void)countFrom:(float)startValue to:(float)endValue withDuration:(NSTimeInterval)duration;

- (void)countFromCurrentValueTo:(float)endValue;
- (void)countFromCurrentValueTo:(float)endValue withDuration:(NSTimeInterval)duration;

- (void)countFromZeroTo:(float)endValue;
- (void)countFromZeroTo:(float)endValue withDuration:(NSTimeInterval)duration;

- (CGFloat)currentValue;

@end

