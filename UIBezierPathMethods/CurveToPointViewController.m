//
//  CurveToPointViewController.m
//  UIBezierPathMethods
//
//  Created by 劉光軍 on 2016/11/8.
//  Copyright © 2016年 劉光軍. All rights reserved.
//

#import "CurveToPointViewController.h"
#import "CurveToPointView.h"


@interface CurveToPointViewController ()

@end

@implementation CurveToPointViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    CurveToPointView *curveToPoint = [[CurveToPointView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    curveToPoint.backgroundColor = [UIColor blueColor];
    [self.view addSubview:curveToPoint];
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
