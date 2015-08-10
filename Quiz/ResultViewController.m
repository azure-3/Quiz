//
//  ResultViewController.m
//  Quiz
//
//  Created by 暖 澤田 on 12/01/07.
//  Copyright (c) 2012年 慶應義塾大学. All rights reserved.
//

#import "ResultViewController.h"

@implementation ResultViewController {
    
    //クイズ画面から正答数を受ける
    int correctPercentage;
    
    //各種ラベル
    IBOutlet UILabel *percentageLabel;
    IBOutlet UILabel *levelLabel;
    
    //　レベルの画像を扱うImage View
    IBOutlet UIImageView *levelImage;
    
}

@synthesize correctPercentage;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //正答率に応じて「一般常識レベル」の位と画像を設定
    if (correctPercentage < 50) {
        levelLabel.text = @"FIGHT!";
        levelImage.image = [UIImage imageNamed:@"level0030.png"];
    } else if (correctPercentage >= 50 && correctPercentage < 100) {
        levelLabel.text = @"GOOD!";
        levelImage.image = [UIImage imageNamed:@"level3090.png"];
    } else if (correctPercentage >= 100){
        levelLabel.text = @"PERFECT!";
        levelImage.image = [UIImage imageNamed:@"level90.png"];
    }
    
    //実際の正答率を表示
    percentageLabel.text = [NSString stringWithFormat:@"%d %%", correctPercentage];
    
    
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
