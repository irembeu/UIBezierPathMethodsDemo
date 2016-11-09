//
//  RectView.m
//  UIBezierPathMethods
//
//  Created by 劉光軍 on 2016/11/9.
//  Copyright © 2016年 劉光軍. All rights reserved.
//

#import "RectView.h"

@implementation RectView


- (void)drawRect:(CGRect)rect {
    
    UIColor *color = [UIColor redColor];
    [color set]; //设置线条颜色
    
    UIBezierPath* path = [UIBezierPath bezierPathWithRect:CGRectMake(20, 20, 100, 80)];
    
    path.lineWidth = 5.0;
    path.lineCapStyle = kCGLineCapRound; //线条拐角
    path.lineJoinStyle = kCGLineJoinRound; //终点处理
    
    [path stroke];
}


@end
