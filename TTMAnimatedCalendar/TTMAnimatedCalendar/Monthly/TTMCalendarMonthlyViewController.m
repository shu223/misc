//
//  TTMCalendarMonthlyViewController.m
//
//  Created by shuichi on 2/24/14.
//  Copyright (c) 2014 Shuichi Tsutsumi. All rights reserved.
//

#import "TTMCalendarMonthlyViewController.h"
#import "TTMCalendarMonthlyViewCell.h"
#import "TTMCalendarTransitionLayout.h"
#import "TTMCalendarDailyViewController.h"
#import "TTMCalendarHelper.h"
#import "NSDate+TTMCalendar.h"
#import "TTMCalendarMonthlyHeaderView.h"


@interface TTMCalendarMonthlyViewController ()
{
    NSUInteger currentYear;
    NSUInteger currentMonth;
    NSUInteger selectedDay;
}
@end


@implementation TTMCalendarMonthlyViewController

- (NSDateFormatter *)headerDateFormatter;
{
    if (!_headerDateFormatter) {
        _headerDateFormatter = [[NSDateFormatter alloc] init];
        _headerDateFormatter.calendar = [NSCalendar currentCalendar];
        _headerDateFormatter.dateFormat = [NSDateFormatter dateFormatFromTemplate:@"yyyyLLLL" options:0 locale:[NSLocale currentLocale]];
    }
    return _headerDateFormatter;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.collectionView registerClass:[TTMCalendarMonthlyViewCell class]
            forCellWithReuseIdentifier:[TTMCalendarMonthlyViewCell cellIdentifier]];
    [self.collectionView registerClass:[TTMCalendarMonthlyHeaderView class]
            forSupplementaryViewOfKind:UICollectionElementKindSectionHeader
                   withReuseIdentifier:[TTMCalendarMonthlyHeaderView headerIdentifier]];
    
    self.collectionView.backgroundColor = [UIColor whiteColor];
}

- (void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    
//    [self.navigationController setNavigationBarHidden:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


// =============================================================================
#pragma mark - UICollectionViewDataSource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {

    return [TTMCalendarHelper numberOfWeeksInMonth:currentMonth year:currentYear] * 7;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {

    NSString *cellIdentifier = [TTMCalendarMonthlyViewCell cellIdentifier];
    TTMCalendarMonthlyViewCell *cell = (TTMCalendarMonthlyViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:cellIdentifier
                                                                                               forIndexPath:indexPath];
    

    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDate *cellDate = [self dateForCellAtIndexPath:indexPath];

    NSDateComponents *dateComponents = [calendar components:NSDayCalendarUnit | NSMonthCalendarUnit
                                                   fromDate:cellDate];
    cell.label.text = [NSString stringWithFormat:@"%@", @(dateComponents.day)];

    if (cellDate.month == currentMonth) {
        cell.alpha = 1.0;
        
        NSLog(@"cellDate:%@, selectedDay:%lu", cellDate, (unsigned long)selectedDay);
        if (cellDate.day == selectedDay) {
            
            [cell setSelected:YES];
        }
        else {
            
            [cell setSelected:NO];
        }
    }
    else {
        cell.alpha = 0.5;
    }
    
    return cell;
}



// =============================================================================
#pragma mark - UICollectionViewDelegate

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    
    selectedDay = [self dateForCellAtIndexPath:indexPath].day;
    
    UICollectionViewLayout *layout = [TTMCalendarDailyViewController dailyLayout];
    TTMCalendarDailyViewController *dailyCtr = [[TTMCalendarDailyViewController alloc] initWithCollectionViewLayout:layout];
    dailyCtr.useLayoutToLayoutNavigationTransitions = YES;
    
    [self.navigationController pushViewController:dailyCtr
                                         animated:YES];
}

- (UICollectionViewTransitionLayout *)collectionView:(UICollectionView *)collectionView
                        transitionLayoutForOldLayout:(UICollectionViewLayout *)fromLayout
                                           newLayout:(UICollectionViewLayout *)toLayout
{
    UICollectionViewTransitionLayout *layout = [[TTMCalendarTransitionLayout alloc] initWithCurrentLayout:fromLayout
                                                                                               nextLayout:toLayout];
    return layout;
}

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView
           viewForSupplementaryElementOfKind:(NSString *)kind
                                 atIndexPath:(NSIndexPath *)indexPath
{
    if ([kind isEqualToString:UICollectionElementKindSectionHeader]) {
        
        TTMCalendarMonthlyHeaderView *headerView;
        headerView = [collectionView dequeueReusableSupplementaryViewOfKind:kind
                                                        withReuseIdentifier:[TTMCalendarMonthlyHeaderView headerIdentifier]
                                                               forIndexPath:indexPath];
        return headerView;
    }
    
    return nil;
}



// =============================================================================
#pragma mark - Private

- (NSDate *)dateForCellAtIndexPath:(NSIndexPath *)indexPath
{
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDate *firstOfMonth = [TTMCalendarHelper dateWithYear:currentYear month:currentMonth day:1];
    NSInteger ordinalityOfFirstDay = [calendar ordinalityOfUnit:NSDayCalendarUnit
                                                         inUnit:NSWeekCalendarUnit
                                                        forDate:firstOfMonth];
    NSDateComponents *dateComponents = [NSDateComponents new];
    dateComponents.day = (1 - ordinalityOfFirstDay) + indexPath.item;
    
    return [calendar dateByAddingComponents:dateComponents toDate:firstOfMonth options:0];
}


// =============================================================================
#pragma mark - Public

- (void)setDate:(NSDate *)date {

    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *components = [calendar components:NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit
                                               fromDate:date];

    currentYear  = components.year;
    currentMonth = components.month;
    selectedDay  = components.day;
    
    self.title = [self.headerDateFormatter stringFromDate:date];
    
    [self.collectionView reloadData];
}

@end
