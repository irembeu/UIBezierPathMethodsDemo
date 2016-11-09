//
//  RoundedRectViewControlle.m
//  UIBezierPathMethods
//
//  Created by 劉光軍 on 2016/11/8.
//  Copyright © 2016年 劉光軍. All rights reserved.
//

#import "RoundedRectViewControlle.h"
#import "RoundedRectView.h"

@interface RoundedRectViewControlle ()

@end

@implementation RoundedRectViewControlle

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    RoundedRectView *roundRect = [[RoundedRectView alloc] initWithFrame:CGRectMake(30, 200, 100, 100)];
    roundRect.backgroundColor = [UIColor blueColor];
    [self.view addSubview:roundRect];
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
