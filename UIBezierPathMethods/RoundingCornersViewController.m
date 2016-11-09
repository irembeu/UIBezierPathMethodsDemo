//
//  RoundingCornersViewController.m
//  UIBezierPathMethods
//
//  Created by 劉光軍 on 2016/11/8.
//  Copyright © 2016年 劉光軍. All rights reserved.
//

#import "RoundingCornersViewController.h"
#import "RoundingCornersView.h"

@interface RoundingCornersViewController ()

@end

@implementation RoundingCornersViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    RoundingCornersView *roundCorners = [[RoundingCornersView alloc] initWithFrame:CGRectMake(50, 100, 100, 100)];
    roundCorners.backgroundColor = [UIColor blueColor];
    [self.view addSubview:roundCorners];
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
