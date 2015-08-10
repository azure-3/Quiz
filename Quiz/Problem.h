//
//  Problem.h
//  Quiz
//
//  Created by 暖 澤田 on 12/01/07.
//  Copyright (c) 2012年 慶應義塾大学. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Problem : NSObject

+ (id)initProblem;
- (void)setData:(NSString *)q
                    c1:(NSString *)c1
                    c2:(NSString *)c2
                    c3:(NSString *)c3
                    qimg:(UIImage *)qimg
                    ansNo:(int)a;

- (NSString *)getQ;
- (NSString *)getChoice : (int)n;
- (UIImage *)getP;
- (int)getA;

@end
