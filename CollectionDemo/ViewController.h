//
//  ViewController.h
//  CollectionDemo
//
//  Created by Magneto on 6/28/14.
//  Copyright (c) 2014 Magneto. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>
{
    NSMutableArray *arrOfNames;
}
- (IBAction)TapMe:(id)sender;
@property (strong, nonatomic) IBOutlet UICollectionView *myCollectionView;
@end
