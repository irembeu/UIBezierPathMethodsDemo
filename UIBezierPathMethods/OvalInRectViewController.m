//
//  OvalInRectViewController.m
//  UIBezierPathMethods
//
//  Created by 劉光軍 on 2016/11/8.
//  Copyright © 2016年 劉光軍. All rights reserved.
//  使用UIBezierPath创建圆形或者椭圆形 (内切)

#import "OvalInRectViewController.h"
#import "OvalInRectView.h"

@interface OvalInRectViewController ()

@end

@implementation OvalInRectViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    OvalInRectView *ovalInRect = [[OvalInRectView alloc] initWithFrame:CGRectMake(0, 100, [UIScreen mainScreen].bounds.size.width, 200)];
    ovalInRect.backgroundColor = [UIColor blueColor];
    [self.view addSubview:ovalInRect];
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
