//
//  OvalInRectView.m
//  UIBezierPathMethods
//
//  Created by 劉光軍 on 2016/11/9.
//  Copyright © 2016年 劉光軍. All rights reserved.
//  

#import "OvalInRectView.h"

@implementation OvalInRectView

- (void)drawRect:(CGRect)rect {
    
    UIColor *color = [UIColor redColor];
    [color set];
    
    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(30, 30, 100, 100)];
    
    path.lineWidth = 5.0;
    path.lineCapStyle = kCGLineCapRound;
    path.lineJoinStyle = kCGLineJoinRound;
    
    [path stroke];
}

@end
