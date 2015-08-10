//
//  Problem.m
//  Quiz
//
//  Created by 暖 澤田 on 12/01/07.
//  Copyright (c) 2012年 慶應義塾大学. All rights reserved.
//

#import "Problem.h"
 
@implementation Problem {
    //問題文
    NSString *question;
    NSString *choise1;
    NSString *choise2;
    NSString *choise3;
    UIImage *getP;
    
    //答え（「○」なら「0」、「☓」なら「1」）
    int answerNo;
}

//問題文と選択肢と答えを格納
- (void)setData:(NSString *)q c1:(NSString *)c1 c2:(NSString *)c2 c3:(NSString *)c3 qimg:(UIImage *)qimg ansNo:(int)a {
    question = q;
    choise1 = c1;
    choise2 = c2;
    choise3 = c3;
    getP = qimg;

    answerNo = a;
}

//問題文を読み出し
- (NSString *)getQ {
    return question;
}
- (UIImage *)getP{
    return getP;
}
- (NSString *)getChoice : (int)n{
    
    NSString *ss;
    UIImage *ii;
    
    switch (n) {
        case 1:
            ss = choise1;
            break;
        case 2:
            ss = choise2;
            break;
        case 3:
            ss = choise3;
            break;
        case 4:
            ii = getP;
            break;
        default:
            ss = nil;
            break;
    }
    return ss;
}

//答えを読み出し
- (int)getA {
    return answerNo;
}

//初期化処理
+ (id)initProblem {
    return [[self alloc] init];
}

@end
