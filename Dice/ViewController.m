//
//  ViewController.m
//  Dice
//
//  Created by 陈一根陈一根 on 16/1/15.
//  Copyright © 2016年 陈一根. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *leftDice;
@property (weak, nonatomic) IBOutlet UILabel *rightDice;
- (IBAction)beginPlay:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)beginPlay:(id)sender {
    //获取两个随机数
    NSInteger left = arc4random()%5+1;
    NSInteger right = arc4random()%5+1;
    
    self.leftDice.text = [NSString stringWithFormat:@"%ld",(long)left];
    self.rightDice.text = [NSString stringWithFormat:@"%ld",(long)right];
}
@end
