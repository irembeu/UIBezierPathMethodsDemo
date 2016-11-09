//
//  quadCurveToPointView.m
//  UIBezierPathMethods
//
//  Created by 劉光軍 on 2016/11/10.
//  Copyright © 2016年 劉光軍. All rights reserved.
//

#import "QuadCurveToPointView.h"

@implementation QuadCurveToPointView

- (void)drawRect:(CGRect)rect {
    
    UIColor *color = [UIColor redColor];
    [color set];
    
    UIBezierPath *path = [UIBezierPath bezierPath];
    
    path.lineWidth = 5.0;
    path.lineCapStyle = kCGLineCapRound;
    path.lineJoinStyle = kCGLineJoinRound;
    /*
     - (void)addQuadCurveToPoint:(CGPoint)endPoint controlPoint:(CGPoint)controlPoint
     Parameters
     endPoint
     The end point of the curve.
     controlPoint
     The control point of the curve.
     */
    
    [path moveToPoint:CGPointMake(40, 150)];
    [path addQuadCurveToPoint:CGPointMake(140, 200) controlPoint:CGPointMake(20, 40)];
    [path stroke];
}

@end
