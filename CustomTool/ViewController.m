//
//  ViewController.m
//  CustomTool
//
//  Created by 燕戏涛 on 2017/10/30.
//  Copyright © 2017年 yzhtech. All rights reserved.
//

#import "ViewController.h"
#import "PiechartModel.h"
#import "PiechartDetchView.h"
#import "ToolPieChartViewController.h"
#import "ToolSegmentViewController.h"
#import "ToolMenuFirstViewController.h"
#import "YZApplyTypeVacationVC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    [self.view setBackgroundColor:[UIColor yellowColor]];

    UIButton * pieChartBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [pieChartBtn setFrame:CGRectMake(0, 0, 200, 50)];
    [pieChartBtn setCenter:CGPointMake(SCREEN_WID/2, SCREEN_HEI/2 - 250)];
    [pieChartBtn setTitle:@"统计图" forState:UIControlStateNormal];
    [pieChartBtn setBackgroundColor:[UIColor grayColor]];
    pieChartBtn.layer.cornerRadius = 4;
    pieChartBtn.layer.masksToBounds = YES;
    [pieChartBtn addTarget:self action:@selector(pushToPieChartVC) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:pieChartBtn];

    UIButton * segmentBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [segmentBtn setFrame:CGRectMake(0, 0, 200, 50)];
    [segmentBtn setCenter:CGPointMake(SCREEN_WID/2, SCREEN_HEI/2 - 180)];
    [segmentBtn setTitle:@"分段控制器" forState:UIControlStateNormal];
    [segmentBtn setBackgroundColor:[UIColor grayColor]];
    segmentBtn.layer.cornerRadius = 4;
    segmentBtn.layer.masksToBounds = YES;
    [segmentBtn addTarget:self action:@selector(pushToSegmentVC) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:segmentBtn];
    
    UIButton * menuViewBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [menuViewBtn setFrame:CGRectMake(0, 0, 200, 50)];
    [menuViewBtn setCenter:CGPointMake(SCREEN_WID/2, SCREEN_HEI/2 - 110)];
    [menuViewBtn setTitle:@"侧边菜单栏" forState:UIControlStateNormal];
    [menuViewBtn setBackgroundColor:[UIColor grayColor]];
    menuViewBtn.layer.cornerRadius = 4;
    menuViewBtn.layer.masksToBounds = YES;
    [menuViewBtn addTarget:self action:@selector(pushToMenuVC) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:menuViewBtn];
    
    UIButton * pickerViewBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [pickerViewBtn setFrame:CGRectMake(0, 0, 200, 50)];
    [pickerViewBtn setCenter:CGPointMake(SCREEN_WID/2, SCREEN_HEI/2 - 40)];
    [pickerViewBtn setTitle:@"pickerView" forState:UIControlStateNormal];
    [pickerViewBtn setBackgroundColor:[UIColor grayColor]];
    pickerViewBtn.layer.cornerRadius = 4;
    pickerViewBtn.layer.masksToBounds = YES;
    [pickerViewBtn addTarget:self action:@selector(pushToPickerVC) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:pickerViewBtn];

}

//跳转统计图
- (void)pushToPieChartVC {
    
    ToolPieChartViewController * toolPieChartVC = [[ToolPieChartViewController alloc] init];
    [self.navigationController pushViewController:toolPieChartVC animated:YES];
}

//跳转分段控制器
- (void)pushToSegmentVC {
    
    ToolSegmentViewController * toolSegmentVC = [[ToolSegmentViewController alloc] init];
    [self.navigationController pushViewController:toolSegmentVC animated:YES];
}

//跳转侧边栏菜单
- (void)pushToMenuVC {
    
    ToolMenuFirstViewController * toolMenuVC = [[ToolMenuFirstViewController alloc] init];
    [self.navigationController pushViewController:toolMenuVC animated:YES];
}

//跳转pickerView
- (void)pushToPickerVC {
    
    YZApplyTypeVacationVC * toolPickerVC = [[YZApplyTypeVacationVC alloc] init];
    [self.navigationController pushViewController:toolPickerVC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
