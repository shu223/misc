//
//  TTMCalendarTransitionLayout.m
//
//  Created by shuichi on 2/24/14.
//  Copyright (c) 2014 Shuichi Tsutsumi. All rights reserved.
//

#import "TTMCalendarTransitionLayout.h"

@implementation TTMCalendarTransitionLayout

- (void)setTranslateX:(CGFloat)translate {
    
    [self updateValue:translate forAnimatedKey:@"translateY"];
}

- (void)setTranslateY:(CGFloat)translate {
    
    [self updateValue:translate forAnimatedKey:@"translateY"];
}

- (void)setTransitionProgress:(CGFloat)transitionProgress {
    
    [super setTransitionProgress:transitionProgress];
    
    CGFloat translateX = [self valueForAnimatedKey:@"translateX"];
    CGFloat translateY = [self valueForAnimatedKey:@"translateY"];

    self.translateX = translateX;
    self.translateY = translateY;
}

- (NSArray *)layoutAttributesForElementsInRect:(CGRect)rect {
    
    NSArray *attributesArray = [super layoutAttributesForElementsInRect:rect];
    
    for (UICollectionViewLayoutAttributes *attributes in attributesArray) {

        CGPoint center = attributes.center;
        attributes.center = CGPointMake(center.x + self.translateX, center.y + self.translateY);
    }
    
    return attributesArray;
}

- (UICollectionViewLayoutAttributes *)layoutAttributesForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewLayoutAttributes *attributes = [super layoutAttributesForItemAtIndexPath:indexPath];

    CGPoint center = attributes.center;
    
    attributes.center = CGPointMake(center.x + self.translateX, center.y + self.translateY);
    
    return attributes;
}

@end
