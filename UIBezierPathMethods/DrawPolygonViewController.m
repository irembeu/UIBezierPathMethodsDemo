//
//  DrawPolygonViewController.m
//  UIBezierPathMethods
//
//  Created by 劉光軍 on 2016/11/9.
//  Copyright © 2016年 劉光軍. All rights reserved.
//

#import "DrawPolygonViewController.h"
#import "DrawPolygonView.h"

@interface DrawPolygonViewController ()

@end

@implementation DrawPolygonViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    DrawPolygonView *view = [[DrawPolygonView alloc] initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 300)];
    view.backgroundColor = [UIColor blueColor];
    [self.view addSubview:view];
    
    // Do any additional setup after loading the view.
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
