//
//  SuperView.m
//  超过父视图的点击
//
//  Created by lixiaoqiang on 2017/11/29.
//  Copyright © 2017年 lixiaoqiang. All rights reserved.
//

#import "SuperView.h"

@implementation SuperView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

/**
 方法一
 */
//- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event
//{
//    BOOL a = [super pointInside:point withEvent:event];
//    a = YES;
//    return a;
//}


/**
 方法二
 */
- (UIView*)hitTest:(CGPoint)point withEvent:(UIEvent *)event
{
    UIView *view = [super hitTest:point withEvent:event];
    if (view == nil) {
        // 转换坐标系
//        CGPoint newPoint = [self.button convertPoint:point fromView:self];
//        // 判断触摸点是否在button上
//        if (CGRectContainsPoint(self.button.bounds, newPoint)) {
//            view = self.button;
//        }
        for (UIView *subview in self.subviews) {
            NSLog(@"Point%@",NSStringFromCGPoint(point));
            CGPoint newPoint = [subview convertPoint:point fromView:self];
            NSLog(@"clickPoint%@",NSStringFromCGPoint(newPoint));
            if (CGRectContainsPoint(subview.bounds, newPoint)) {
                view = subview;
            }
        }
    }
    return view;
}


@end
