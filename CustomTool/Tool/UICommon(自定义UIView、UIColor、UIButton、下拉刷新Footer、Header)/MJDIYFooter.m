//
//  MJDIYFooter.m
//  LGBeauty
//
//  Created by 燕戏涛 on 2017/7/27.
//  Copyright © 2017年 RongCloud. All rights reserved.
//

#import "MJDIYFooter.h"

@interface MJDIYFooter()
@property (weak, nonatomic) UILabel *label;
@property (weak, nonatomic) UISwitch *s;
@property (weak, nonatomic) UIImageView *logo;
@property (weak, nonatomic) UIActivityIndicatorView *loading;
@end

@implementation MJDIYFooter
#pragma mark - 重写方法
#pragma mark 在这里做一些初始化配置（比如添加子控件）
- (void)prepare
{
    [super prepare];
    
    // 设置控件的高度
    self.mj_h = 50;
    
    // 添加label
    UILabel *label = [[UILabel alloc] init];
    label.textColor = [UIColor colorWithString:@"0x666666"];
    label.font = [UIFont boldSystemFontOfSize:16];
    label.textAlignment = NSTextAlignmentCenter;
    //    label.text = @"正在刷新数据，请稍等";
    [self addSubview:label];
    self.label = label;
    
    // 打酱油的开关
    //    UISwitch *s = [[UISwitch alloc] init];
    //    [self addSubview:s];
    //    self.s = s;
    
    // logo
    //    UIImageView *logo = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Logo"]];
    //    logo.contentMode = UIViewContentModeScaleAspectFit;
    //    [self addSubview:logo];
    //    self.logo = logo;
    
    // loading
    UIActivityIndicatorView *loading = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    [self addSubview:loading];
    self.loading = loading;
}

#pragma mark 在这里设置子控件的位置和尺寸
- (void)placeSubviews
{
    [super placeSubviews];
    
    self.label.frame = self.bounds;
    
    //    self.logo.bounds = CGRectMake(0, 0, self.bounds.size.width, 100);
    //    self.logo.center = CGPointMake(self.mj_w * 0.5, - self.logo.mj_h + 20);
    //
    self.loading.center = CGPointMake(30, self.mj_h * 0.5);
}

#pragma mark 监听scrollView的contentOffset改变
- (void)scrollViewContentOffsetDidChange:(NSDictionary *)change
{
    [super scrollViewContentOffsetDidChange:change];
    
}

#pragma mark 监听scrollView的contentSize改变
- (void)scrollViewContentSizeDidChange:(NSDictionary *)change
{
    [super scrollViewContentSizeDidChange:change];
    
}

#pragma mark 监听scrollView的拖拽状态改变
- (void)scrollViewPanStateDidChange:(NSDictionary *)change
{
    [super scrollViewPanStateDidChange:change];
    
}

#pragma mark 监听控件的刷新状态
- (void)setState:(MJRefreshState)state
{
    MJRefreshCheckState;
    
    switch (state) {
        case MJRefreshStateIdle:
            [self.loading stopAnimating];
            //            [self.s setOn:NO animated:YES];
//            self.label.text = @"上拉刷新数据";
            break;
        case MJRefreshStatePulling:
            [self.loading stopAnimating];
            //            [self.s setOn:YES animated:YES];
//            self.label.text = @"加载数据中，请稍等";
            break;
        case MJRefreshStateRefreshing:
            //            [self.s setOn:YES animated:YES];
//            self.label.text = @"加载数据中，请稍等";
            [self.loading startAnimating];
            break;
        default:
            break;
    }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
