//
//  ViewController.m
//  超过父视图的点击
//
//  Created by lixiaoqiang on 2017/11/29.
//  Copyright © 2017年 lixiaoqiang. All rights reserved.
//

#import "ViewController.h"
#import "CustomButton.h"
#import "SuperView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    SuperView *superView = [[SuperView alloc] initWithFrame:CGRectMake(200, 200, 100, 100)];
    superView.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:superView];
    CustomButton *button = [CustomButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(0, 0, 100, 200);
    button.backgroundColor = [UIColor greenColor];
    [button addTarget:self action:@selector(buttonAction) forControlEvents:UIControlEventTouchUpInside];
    [superView addSubview:button];
}

- (void)buttonAction
{
    NSLog(@"%s",__func__);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
