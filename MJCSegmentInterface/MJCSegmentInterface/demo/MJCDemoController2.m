//
//  SegMentInterfaceStyleLess.m
//  MJCSlideSwitch
//
//  Created by mjc on 16/10/27.
//  Copyright © 2016年 MJC. All rights reserved.
//

#import "MJCDemoController2.h"
#import "MJCPrefixHeader.pch"


@interface MJCDemoController2 ()<MJCSlideSwitchViewDelegate>

@end

@implementation MJCDemoController2

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSInteger style = 0;
    
    self.view.backgroundColor = [UIColor redColor];
    
//    //有导航栏或者tabbar时,保证标题栏不会被覆盖
    if ([self respondsToSelector:@selector(edgesForExtendedLayout)]) {
        self.edgesForExtendedLayout = UIRectEdgeNone;
    }

    //添加标题栏
    NSArray *titlesArr = @[@"啦啦",@"么么",@"啪啪",@"啪啪",@"啪啪"];
    
    //创建标题栏控件
    MJCSegmentInterface  *segmentInterface = [[MJCSegmentInterface alloc]init];
    
    segmentInterface.MJCSeMentTitleBarStyle = MJCSegMentTitlesClassicStyle;
    
    segmentInterface.verticalLineHidden = NO;
    segmentInterface.slideDelegate = self;
    segmentInterface.childScollEnabled = YES;
    
    //在添加标题栏之前做其他属性操作
    [segmentInterface intoTitlesArray:titlesArr];
    [self.view addSubview:segmentInterface];
    
    
    //添加控制器
    UITestViewController *vc = [[UITestViewController alloc]init];
    [segmentInterface intoChildViewController:vc hostMainController:self];
    
    UITestViewController1 *vc1 = [[UITestViewController1 alloc]init];
    vc1.style = style;
    [segmentInterface intoChildViewController:vc1 hostMainController:self];
    
    UITestViewController2 *vc2 = [[UITestViewController2 alloc]init];
    [segmentInterface intoChildViewController:vc2 hostMainController:self];
    
    UITestViewController3 *vc3 = [[UITestViewController3 alloc]init];
    vc3.style = style;//传输数据
    [segmentInterface intoChildViewController:vc3 hostMainController:self];
    
    UITestViewController4 *vc4 = [[UITestViewController4 alloc]init];
    [segmentInterface intoChildViewController:vc4 hostMainController:self];
}




@end
