//
//  RoundedRectView.m
//  UIBezierPathMethods
//
//  Created by 劉光軍 on 2016/11/10.
//  Copyright © 2016年 劉光軍. All rights reserved.
//

#import "RoundedRectView.h"

@implementation RoundedRectView

- (void)drawRect:(CGRect)rect {
    
    UIColor *color = [UIColor redColor];
    [color set];
    
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(0, 0, 100, 100) cornerRadius:50];
    
    path.lineWidth = 5.0;
    path.lineCapStyle = kCGLineCapRound;
    path.lineJoinStyle = kCGLineJoinRound;
    
    [path stroke];
    
}

@end
