//
//  QuizViewController.m
//  Quiz
//
//  Created by 暖 澤田 on 12/01/07.
//  Copyright (c) 2012年 慶應義塾大学. All rights reserved.
//

#import "QuizViewController.h"

@implementation QuizViewController {
    
    //問題（Quizクラスのインスタンス）を格納する配列
    NSMutableArray *problemSet;
    
    //出題する問題数
    int totalProblems;
    //現在の進捗（出題済み問題数）を記録
    int currentProblem;
    //正答数
    int correctAnswers;
    
    //問題文を表示するText View
    IBOutlet UITextView *problemText;
    
    // 選択肢を表示するLabel
    IBOutlet UILabel *lbChoise1;
    IBOutlet UILabel *lbChoise2;
    IBOutlet UILabel *lbChoise3;
    
    
    
}

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


// Implement loadView to create a view hierarchy programmatically, without using a nib.
/*
- (void)loadView
{
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    // 問題を格納する可変配列のproblemSetを初期化
    problemSet = [[NSMutableArray alloc] init];   
    
    
    
    
    // 例　[self addProblem:@"1月1日は何の日？" c1:@"クリスマス" c2:@"元旦" c3:@"大晦日" ans:2];
    // ======================     ここから下に命令を追加してください。   ==================
    [self addProblem:@"この国はどこ？" c1:@"日本" c2:@"韓国" c3:@"中国" qimg:[UIImage imageNamed:@"q1.png"] ans:1];
    [self addProblem:@"この国はどこ？" c1:@"ブルガリア" c2:@"イエメン" c3:@"エストニア" qimg:[UIImage imageNamed:@"q2.png"] ans:3];
    [self addProblem:@"この国はどこ？" c1:@"パナマ" c2:@"チリ" c3:@"ペルー" qimg:[UIImage imageNamed:@"q3.png"] ans:2];
    [self addProblem:@"この国はどこ？" c1:@"イラン" c2:@"カタール" c3:@"オマーン" qimg:[UIImage imageNamed:@"q4.png"] ans:3];
    [self addProblem:@"この国はどこ？" c1:@"ロシア" c2:@"オランダ" c3:@"フランス" qimg:[UIImage imageNamed:@"q5.png"] ans:1];
    [self addProblem:@"この国はどこ？" c1:@"キプロス" c2:@"コソボ共和国" c3:@"エチオピア" qimg:[UIImage imageNamed:@"q6.png"] ans:2];
    [self addProblem:@"この国はどこ？" c1:@"デンマーク" c2:@"ノルウェー" c3:@"スウェーデン" qimg:[UIImage imageNamed:@"q7.png"] ans:3];
    [self addProblem:@"この国はどこ？" c1:@"ウクライナ" c2:@"ボツワナ" c3:@"インドネシア" qimg:[UIImage imageNamed:@"q8.png"] ans:2];
    [self addProblem:@"この国はどこ？" c1:@"イギリス" c2:@"イタリア" c3:@"スペイン" qimg:[UIImage imageNamed:@"q9.png"] ans:1];
    [self addProblem:@"この国はどこ？" c1:@"セネガル" c2:@"モロッコ" c3:@"ソマリア" qimg:[UIImage imageNamed:@"q10.png"] ans:3];
    [self addProblem:@"この国はどこ？" c1:@"イタリア" c2:@"ブルガリア" c3:@"ハンガリー" qimg:[UIImage imageNamed:@"q11.png"] ans:2];
    [self addProblem:@"この国はどこ？" c1:@"ルクセンブルク" c2:@"リトアニア" c3:@"モナコ" qimg:[UIImage imageNamed:@"q12.png"] ans:1];
    [self addProblem:@"この国はどこ？" c1:@"モナコ" c2:@"ポーランド" c3:@"マルタ" qimg:[UIImage imageNamed:@"q13.png"] ans:2 ];
    [self addProblem:@"この国はどこ？" c1:@"スロベニア" c2:@"サンマリノ" c3:@"スロバキア" qimg:[UIImage imageNamed:@"q14.png"] ans:3];
    [self addProblem:@"この国はどこ？" c1:@"スペイン" c2:@"ドイツ" c3:@"フィンランド" qimg:[UIImage imageNamed:@"q15.png"]ans:1];
    [self addProblem:@"この国はどこ？" c1:@"ドイツ" c2:@"ベルギー" c3:@"スイス" qimg:[UIImage imageNamed:@"q16.png"] ans:2];
    [self addProblem:@"この国はどこ？" c1:@"ボスニア・ヘルツェゴビナ" c2:@"マケドニア" c3:@"クロアチア共和国" qimg:[UIImage imageNamed:@"q17.png"] ans:1];
    [self addProblem:@"この国はどこ？" c1:@"ニュージーランド" c2:@"フィジー" c3:@"オーストラリア" qimg:[UIImage imageNamed:@"q18.png"] ans:3];
    [self addProblem:@"この国はどこ？" c1:@"フィジー" c2:@"キリバス" c3:@"パプアニューギニア" qimg:[UIImage imageNamed:@"q19.png"]ans:2];
    [self addProblem:@"この国はどこ？" c1:@"ブルキナファソ" c2:@"カーボベルデ" c3:@"ブルンジ" qimg:[UIImage imageNamed:@"q20.png"]ans:3];
    
    // ======================     ここから上に命令を追加してください。   ==================
    
    
    //クイズ問題をランダムに並び替え（シャッフル）
    // シャッフルする場合はコメント解除('//'を先頭から削除)してください
    [self shuffleProblemSet];
    
    
    
    
    //現在の問題番号と正答数を0にする
    currentProblem = 0;
    correctAnswers = 0;
    
    //　problemSetの最初の要素の問題文をクイズ画面にセット
    if(totalProblems > 0){
        
        problemview.image =[[problemSet objectAtIndex:currentProblem] getP];
        lbChoise1.text = [[problemSet objectAtIndex:currentProblem] getChoice:1];
        lbChoise2.text = [[problemSet objectAtIndex:currentProblem] getChoice:2];
        lbChoise3.text = [[problemSet objectAtIndex:currentProblem] getChoice:3];
    }
}

// 問題を追加する
- (void)addProblem : (NSString *)q c1:(NSString *)c1 c2:(NSString *)c2 c3:(NSString *)c3 qimg:(UIImage *)qimg ans:(int)a{

    // 新しくProblemクラスのインスタンスを生成・初期化し、問題文と答えを格納
    Problem *p = [Problem initProblem];
    [p setData:q c1:c1 c2:c2 c3:c3 qimg:qimg ansNo:a];
        
    // 提示問題数をカウントアップ
    totalProblems++;
    
    // 新たに生成したProblemクラスのインスタンスをproblemSetに追加
    [problemSet addObject:p];

}

//問題文をシャッフル
- (void)shuffleProblemSet {
    
    //problemSetに格納された全問題の数を取得
    int totalQuestions = (int)[problemSet count];
    
    //Fisher-Yatesアルゴリズム用のカウンターを取得
    int i = totalQuestions;
    
    //Fisher-Yatesアルゴリズムによって配列の要素をシャッフル
    while (i > 0) {
        
        //乱数を発生
        srand((unsigned int)time(0));
        int j = rand() % i;
        
        //要素を並び替え
        [problemSet exchangeObjectAtIndex:(i-1) withObjectAtIndex:j];
        
        //カウンターを減少させる
        i = i - 1;
    }
    
}

// 選択肢1のボタンが押された時
- (IBAction)answerIsChoise1:(id)sender {
    // 答えが合っているか（答えが選択肢1か）チェック
    if ([[problemSet objectAtIndex:currentProblem] getA] == 1) {
        //　正解数のカウントを増やす
        correctAnswers++;
    }
    // 次の問題へ
    [self nextProblem];   
}

// 選択肢2のボタンが押された時
- (IBAction)answerIsChoise2:(id)sender {
    // 答えが合っているか（答えが選択肢2か）チェック
    if ([[problemSet objectAtIndex:currentProblem] getA] == 2) {
        //　正解数のカウントを増やす
        correctAnswers++;
    }
    // 次の問題へ
    [self nextProblem];   
}

// 選択肢3のボタンが押された時
- (IBAction)answerIsChoise3:(id)sender {
    // 答えが合っているか（答えが選択肢3か）チェック
    if ([[problemSet objectAtIndex:currentProblem] getA] == 3) {
        //　正解数のカウントを増やす
        correctAnswers++;
    }
    // 次の問題へ
    [self nextProblem];   
}


//次の問題提示 or 全問時終わっていたら結果表画面へ
- (void)nextProblem {
    
    //currentProblemを繰り上げ
    currentProblem++;
    
    //これまで出題した問題が、提示問題数に達していない場合
    if (currentProblem < totalProblems) {
        
        //次の問題の問題文を表示
        problemview.image = [[problemSet objectAtIndex:currentProblem] getP];
        lbChoise1.text = [[problemSet objectAtIndex:currentProblem] getChoice:1];
        lbChoise2.text = [[problemSet objectAtIndex:currentProblem] getChoice:2];
        lbChoise3.text = [[problemSet objectAtIndex:currentProblem] getChoice:3];
    //全問題解き終わった場合
    } else {
        
        //結果表示画面へのSegueを始動
        [self performSegueWithIdentifier:@"toResultView" sender:self]; 
    }
}

//結果表示画面へのSegueの発動
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    //正答率を算出
    int percentage = (correctAnswers * 100 / totalProblems) ;
    
    //ResultViewController（RVC）のインスタンスを作成し、
    //RVCクラスのメンバー変数である「correctPercentage」に値を渡す
    if ([[segue identifier] isEqualToString:@"toResultView"]) {
        ResultViewController *rvc = (ResultViewController*)[segue destinationViewController];
        rvc.correctPercentage = percentage;
    }
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
