//
//  CustomButton.m
//  超过父视图的点击
//
//  Created by lixiaoqiang on 2017/11/29.
//  Copyright © 2017年 lixiaoqiang. All rights reserved.
//

#import "CustomButton.h"

@implementation CustomButton

//- (UIView*)hitTest:(CGPoint)point withEvent:(UIEvent *)event
//{
////    NSLog(@"clickPoint%@",NSStringFromCGPoint(point));
////    UIView *view = [[UIView alloc] init];
////    return view;
//    UIView *view = [super hitTest:point withEvent:event];
//    if (view == nil) {
//        for (UIView *subView in self.subviews) {
//            CGPoint tp = [subView convertPoint:point fromView:self];
//            if (CGRectContainsPoint(subView.bounds, tp)) {
//                view = subView;
//            }
//        }
//    }
//    return view;
//}
- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event
{
    BOOL a = [super pointInside:point withEvent:event];
    a = YES;
    return a;
}
@end
