//
//  ViewController.m
//  控制器自动调整scrollview内边距的使用
//
//  Created by lixiaoqiang on 2017/11/26.
//  Copyright © 2017年 lixiaoqiang. All rights reserved.
//

#import "ViewController.h"
#import "TestViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    
    UINavigationController *navi = [[UINavigationController alloc] initWithRootViewController:[[TestViewController alloc] init]];
    [self presentViewController:navi animated:YES completion:nil];
}

@end
