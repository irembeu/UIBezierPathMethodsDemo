//
//  ArcCenterView.m
//  UIBezierPathMethods
//
//  Created by 劉光軍 on 2016/11/9.
//  Copyright © 2016年 劉光軍. All rights reserved.
//

#import "ArcCenterView.h"

#define pi 3.14159265359
#define TO_RADIAUS(radius)  ((pi * radius)/ 180)

@implementation ArcCenterView


/*
 ArcCenter: 原点
 radius: 半径
 startAngle: 开始角度
 endAngle: 结束角度
 clockwise: 是否顺时针方向
 */

- (void)drawRect:(CGRect)rect {
    
    UIColor *color = [UIColor redColor];
    [color set];
    
    
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(100, 100) radius:90 startAngle:0 endAngle:TO_RADIAUS(120) clockwise:YES];
    path.lineWidth = 5.0;
    
    /*
     1、kCGLineCapButt
     A line with a squared-off end. Quartz draws the line to extend only to the exact endpoint of the path. This is the default.
     该属性值指定不绘制端点， 线条结尾处直接结束。这是默认值。
     2、kCGLineCapRound
     A line with a rounded end. Quartz draws the line to extend beyond the endpoint of the path. The line ends with a semicircular arc with a radius of 1/2 the line’s width, centered on the endpoint.
     该属性值指定绘制圆形端点， 线条结尾处绘制一个直径为线条宽度的半圆
     3、kCGLineCapSquare
     A line with a squared-off end. Quartz extends the line beyond the endpoint of the path for a distance equal to half the line widt
     该属性值指定绘制方形端点。
     线条结尾处绘制半个边长为线条宽度的正方形。需要
     说明的是，这种形状的端点与“butt”形状的端点十分相似，
     只是采用这种形式的端点的线条略长一点而已
     
     */
    /*设置两条线连结点的样式(
     kCGLineJoinMiter, 斜接
     kCGLineJoinRound, 圆滑衔接
     kCGLineJoinBevel  斜角连接)
     */
    path.lineCapStyle = kCGLineCapRound;
    path.lineJoinStyle = kCGLineJoinRound;
    [path stroke];
    
    
}

@end
