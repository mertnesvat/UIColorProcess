//
//  BoardViewController.m
//  UIColorProcess
//
//  Created by Mert Nesvat on 12/24/13.
//  Copyright (c) 2013 Mert Nesvat. All rights reserved.
//


// buttona biraz daha komik birseyler ekle ve ardindan background image ardindan da yayinla!
#import "BoardViewController.h"

@interface BoardViewController ()
@property (strong, nonatomic) IBOutlet UICollectionView *board;
@property (strong, nonatomic) UIButton *btn;
@end

@implementation BoardViewController
@synthesize board;
@synthesize btn;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //button stuffs
    btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(100, 234, 100, 100);
    [btn setTitle:@"pushMe!" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnPush) forControlEvents:UIControlEventTouchDown];
    [btn setBackgroundColor:[UIColor colorWithRed:0.1 green:1.0 blue:0.1 alpha:0.1]];
    UIImage *maskingImage = [UIImage imageNamed:@"btnB.png"];
    [btn setBackgroundImage:maskingImage forState:UIControlStateNormal];
    [board addSubview:btn];

	// Do any additional setup after loading the view.
}
- (void)btnPush
{
    NSLog(@"Data is reloading!");

    [board reloadData];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 5;
}
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 10;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellName = @"cell";
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellName forIndexPath:indexPath];
    
    int difference = 5;
    
    
   
#pragma mark METHOD SAMPLES
    
     // you can see examples of methods here!
    if (indexPath.row == 0) {

        [cell setBackgroundColor:[UIColorProcess getRandomColor]];
    }
    else if (indexPath.row == 1) {

        [cell setBackgroundColor:[UIColorProcess getRandomColorFromColor:[UIColor redColor] coordinatesDifference:difference]];
    }
    else if (indexPath.row == 2) {

        [cell setBackgroundColor:[UIColorProcess getDifferentColorFromColor:[UIColor blueColor]]];
    }
    else if (indexPath.row == 3) {
        // functions..
        [cell setBackgroundColor:[UIColorProcess getSimilarColorFromColor:[UIColor purpleColor] coordinatesIndicator:difference]];
    }else{
        [cell setBackgroundColor:[UIColorProcess getSimilarColorFromColor:[UIColor yellowColor] coordinatesIndicator:difference]];
    }
    
    
    return  cell;
}




@end
