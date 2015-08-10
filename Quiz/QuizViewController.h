//
//  QuizViewController.h
//  Quiz
//
//  Created by 暖 澤田 on 12/01/07.
//  Copyright (c) 2012年 慶應義塾大学. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "ResultViewController.h"
#import "Problem.h"

@interface QuizViewController : UIViewController{
    IBOutlet UIImageView * problemview;
}

-(void)shuffleProblemSet;
-(void)nextProblem;

-(void)addProblem : (NSString *)q c1:(NSString *)c1 c2:(NSString *)c2 c3:(NSString *)c3 ans:(int)a qimg:(UIImage *)qimg;

@end
