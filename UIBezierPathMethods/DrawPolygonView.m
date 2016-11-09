//
//  DrawPolygonView.m
//  UIBezierPathMethods
//
//  Created by 劉光軍 on 2016/11/9.
//  Copyright © 2016年 劉光軍. All rights reserved.
//

#import "DrawPolygonView.h"

@implementation DrawPolygonView

- (void)drawRect:(CGRect)rect {
    
    UIColor *color = [UIColor redColor];
    [color set]; //设置线条颜色
    
    UIBezierPath* path = [UIBezierPath bezierPath];
    path.lineWidth = 5.0;
    
    path.lineCapStyle = kCGLineCapRound; //线条拐角
    path.lineJoinStyle = kCGLineJoinRound; //终点处理
    
    [path moveToPoint:CGPointMake(200.0, 50.0)];//起点
    
    // Draw the lines
    [path addLineToPoint:CGPointMake(300.0, 100.0)];
    [path addLineToPoint:CGPointMake(260, 200)];
    [path addLineToPoint:CGPointMake(100.0, 200)];
    [path addLineToPoint:CGPointMake(100, 70.0)];
    [path closePath];//第五条线通过调用closePath方法得到的
    
    //    [path stroke];//Draws line 根据坐标点连线
    [path fill];//颜色填充
    
}
@end
