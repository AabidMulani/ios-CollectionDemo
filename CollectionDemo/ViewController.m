//
//  ViewController.m
//  CollectionDemo
//
//  Created by Magneto on 6/28/14.
//  Copyright (c) 2014 Magneto. All rights reserved.
//

#import "ViewController.h"
#import "MyCell.h"
@interface ViewController ()

@end

@implementation ViewController
@synthesize myCollectionView;

- (void)viewDidLoad
{
    [super viewDidLoad];
    arrOfNames=[[NSMutableArray alloc]initWithObjects:@"Aabid",@"Arif",@"Rahul",@"Juber",@"Ratnesh", nil];
    //[myCollectionView registerClass:[MyCell class] forCellWithReuseIdentifier:@"cell"];
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return arrOfNames.count;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    MyCell *cell=(MyCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"cell"
                                                                      forIndexPath:indexPath];
    cell.lblName.text=arrOfNames[indexPath.row];
    
    return cell;
}
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(90, 90);
}
- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    return UIEdgeInsetsMake(10, 10, 10, 10);
}
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section
{
    return 15.0;
}
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section
{
    return 5.0;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section
{
    return CGSizeMake(15, 5);
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout referenceSizeForFooterInSection:(NSInteger)section
{
    return CGSizeMake(25, 5);
}

- (IBAction)TapMe:(id)sender
{
    NSLog(@"Hello");
}
@end
