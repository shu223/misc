//
//  TTMCalendarMonthlyLayout.m
//  TTMAnimatedCalenadarDemo
//
//  Created by shuichi on 2/24/14.
//  Copyright (c) 2014 Shuichi Tsutsumi. All rights reserved.
//

#import "TTMCalendarMonthlyLayout.h"

@implementation TTMCalendarMonthlyLayout

- (id)init {
    
    if (self = [super init]) {

        self.itemSize = CGSizeMake(38, 38);
        
        self.sectionInset = UIEdgeInsetsMake(12, 12, 12, 12);
        self.minimumInteritemSpacing = 3;
        self.minimumLineSpacing = 50;
        
        self.scrollDirection = UICollectionViewScrollDirectionVertical;
        self.headerReferenceSize = CGSizeMake(0, 40);
    }
    return self;
}

@end
