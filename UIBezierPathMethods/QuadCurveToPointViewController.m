//
//  QuadCurveToPointViewController.m
//  UIBezierPathMethods
//
//  Created by 劉光軍 on 2016/11/8.
//  Copyright © 2016年 劉光軍. All rights reserved.
//

#import "QuadCurveToPointViewController.h"
#import "QuadCurveToPointView.h"

@interface QuadCurveToPointViewController ()

@end

@implementation QuadCurveToPointViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    QuadCurveToPointView *quadCurveToPoint = [[QuadCurveToPointView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    quadCurveToPoint.backgroundColor = [UIColor blueColor];
    [self.view addSubview:quadCurveToPoint];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
