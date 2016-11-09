//
//  RoundingCornersView.m
//  UIBezierPathMethods
//
//  Created by 劉光軍 on 2016/11/10.
//  Copyright © 2016年 劉光軍. All rights reserved.
//

#import "RoundingCornersView.h"

@implementation RoundingCornersView

- (void)drawRect:(CGRect)rect {
    
    UIColor *color = [UIColor redColor];
    [color set];
    
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(0, 0, 100, 100) byRoundingCorners:UIRectCornerTopRight cornerRadii:CGSizeMake(20, 20)];
    
    path.lineCapStyle = kCGLineCapRound;
    path.lineJoinStyle = kCGLineJoinRound;
    path.lineWidth = 5.0;
    
    [path stroke];
}

@end
