//
//  TestViewController.m
//  控制器自动调整scrollview内边距的使用
//
//  Created by lixiaoqiang on 2017/11/26.
//  Copyright © 2017年 lixiaoqiang. All rights reserved.
//

#import "TestViewController.h"

@interface TestViewController ()
@property (nonatomic,strong)UIScrollView *scrollview;
@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   
    self.view.backgroundColor = [UIColor orangeColor];
    
    self.scrollview = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    self.scrollview.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.scrollview];
    
    
    
    //self.scrollview.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    view.backgroundColor = [UIColor blueColor];
    [self.scrollview addSubview:view];
}


@end
