//
//  TTMCalendarDailyViewController.m
//
//  Created by shuichi on 2/24/14.
//  Copyright (c) 2014 Shuichi Tsutsumi. All rights reserved.
//

#import "TTMCalendarDailyViewController.h"
//#import "TTMCalendarDailyViewCell.h"


@interface TTMCalendarDailyViewController ()
@end


@implementation TTMCalendarDailyViewController

+ (UICollectionViewFlowLayout *)dailyLayout {
    
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    layout.itemSize = CGSizeMake(160, 240);
    layout.sectionInset = UIEdgeInsetsMake(40, 5, 40, 5);
    layout.minimumInteritemSpacing = 10;
    layout.minimumLineSpacing = 10;
    layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    return layout;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

//    [self.collectionView registerClass:[TTMCalendarDailyViewCell class]
//            forCellWithReuseIdentifier:[TTMCalendarDailyViewCell cellIdentifier]];
    
}

- (void)viewDidAppear:(BOOL)animated {
    
    [super viewDidAppear:animated];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}



// =============================================================================
#pragma mark - UICollectionViewDataSource

//- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
//    
//    return 3;
//}
//
//- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
//    
//    NSString *cellIdentifier = [TTMCalendarDailyViewCell cellIdentifier];
//    TTMCalendarDailyViewCell *cell = (TTMCalendarDailyViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:cellIdentifier
//                                                                                                           forIndexPath:indexPath];
//
//    cell.label.text = [NSString stringWithFormat:@"%ld", (long)indexPath.item];
//
//    return cell;
//}


// =============================================================================
#pragma mark - UICollectionViewDelegate

//- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
//    
//}


@end
