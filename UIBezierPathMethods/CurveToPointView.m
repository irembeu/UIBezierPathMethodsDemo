//
//  CurveToPointView.m
//  UIBezierPathMethods
//
//  Created by 劉光軍 on 2016/11/10.
//  Copyright © 2016年 劉光軍. All rights reserved.
//

#import "CurveToPointView.h"

@implementation CurveToPointView

- (void)drawRect:(CGRect)rect {
    /*
     - (void)addCurveToPoint:(CGPoint)endPoint controlPoint1:(CGPoint)controlPoint1 controlPoint2:(CGPoint)controlPoint2
     Parameters
     endPoint
     The end point of the curve.
     controlPoint1
     The first control point to use when computing the curve.
     controlPoint2
     The second control point to use when computing the curve.
     */
    
    UIColor *color = [UIColor redColor];
    [color set];
    
    UIBezierPath *path = [UIBezierPath bezierPath];
    
    path.lineWidth = 5.0;
    path.lineCapStyle = kCGLineCapRound;
    path.lineJoinStyle = kCGLineJoinRound;
    
    [path moveToPoint:CGPointMake(20, 200)];
    [path addCurveToPoint:CGPointMake(260, 200) controlPoint1:CGPointMake(140, 0) controlPoint2:CGPointMake(140, 400)];
    [path stroke];
}

@end
