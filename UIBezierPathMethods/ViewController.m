//
//  ViewController.m
//  UIBezierPathMethods
//
//  Created by 劉光軍 on 2016/11/8.
//  Copyright © 2016年 劉光軍. All rights reserved.
//

#import "ViewController.h"
#import "DrawPolygonViewController.h"
#import "RectViewController.h"
#import "OvalInRectViewController.h"
#import "RoundedRectViewControlle.h"
#import "RoundingCornersViewController.h"
#import "ArcCenterViewController.h"
#import "QuadCurveToPointViewController.h"
#import "CurveToPointViewController.h"


@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) UITableView *tableView;
@property (strong, nonatomic) NSArray *titleArr;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.navigationItem.title = @"UIBezierPath常用方法";
    self.tableView = [[UITableView alloc] initWithFrame:[UIScreen mainScreen].bounds style:UITableViewStylePlain];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];
    
//    _titleArr = @[@"画多边形",@"画矩形", @"创建圆形或者椭圆形", @"创建一段弧线", @"在矩形中针对四角中的某个角加圆角", @"以某个中心点画弧线", @"画二元曲线一般和moveToPoint配合使用", @"以三个点画一段曲线"];
    _titleArr = @[@"画多边形",@"画矩形", @"创建圆形或者椭圆形", @"创建一段弧线", @"绘制二次贝塞尔曲线", @"绘制三次贝塞尔曲线", @"画带圆角的矩形", @"指定矩形的某角为圆角"];
}

//MARK: tableview 代理方法
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 8;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return  60;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *cellStr = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellStr];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:cellStr];
    }
    cell.textLabel.text = [_titleArr objectAtIndex:indexPath.row];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.row == 0) {
        DrawPolygonViewController *polygon = [[DrawPolygonViewController alloc] init];
        [self navigaitonControllerPush:polygon titleName:@"DrawPolygonViewController"];
    } else if (indexPath.row == 1) {
        RectViewController *rect = [[RectViewController alloc] init];
        [self navigaitonControllerPush:rect titleName:@"RectViewController"];
    } else if (indexPath.row == 2) {
        OvalInRectViewController *oval = [[OvalInRectViewController alloc] init];
        [self navigaitonControllerPush:oval titleName:@"OvalInRectViewController"];
    } else if (indexPath.row == 3) {
        
        ArcCenterViewController *arc = [[ArcCenterViewController alloc] init];
        [self navigaitonControllerPush:arc titleName:@"ArcCenterViewController"];
    } else if (indexPath.row == 4) {
        QuadCurveToPointViewController *quad = [[QuadCurveToPointViewController alloc] init];
        [self navigaitonControllerPush:quad titleName:@"QuadCurveToPointViewController"];
    } else if (indexPath.row == 5) {
        CurveToPointViewController *curve = [[CurveToPointViewController alloc] init];
        [self navigaitonControllerPush:curve titleName:@"CurveToPointViewController"];
    } else if (indexPath.row == 6) {
        RoundedRectViewControlle *roundRect = [[RoundedRectViewControlle alloc] init];
        [self navigaitonControllerPush:roundRect titleName:@"RoundedRectViewControlle"];
    } else {
        RoundingCornersViewController *rounding = [[RoundingCornersViewController alloc] init];
        [self navigaitonControllerPush:rounding titleName:@"RoundingCornersViewController"];

    }
}


- (void)navigaitonControllerPush:(UIViewController *)viewController titleName:(NSString *)className {
    [self.navigationController pushViewController:viewController animated:YES];
    viewController.navigationItem.title = className;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
