//
//  SegMentInterfaceStyleClassic.m
//  MJCSlideSwitch
//
//  Created by mjc on 16/10/27.
//  Copyright © 2016年 MJC. All rights reserved.
//

#import "MJCDemoController.h"
#import "MJCPrefixHeader.pch"

@interface MJCDemoController ()<MJCSlideSwitchViewDelegate>


/** <#  注释  #> */
@property (nonatomic,strong) MJCSegmentInterface *segmentInterface;

@end

@implementation MJCDemoController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSInteger style = 0;
    self.view.backgroundColor = [UIColor whiteColor];
    
    //有导航栏或者tabbar时,保证标题栏不会被覆盖(极推这种方法)
//    [MJCToolClasses useNavOrTabbarNotBeCover:self rectEdge:UIRectEdgeNone];
    
    //添加标题栏
    NSArray *titlesArr = @[@"啦啦",@"么么",@"啪啪",@"啪啪",@"啪啪"];
    
    //创建标题栏控件
//    MJCSegmentInterface  *segmentInterface = [[MJCSegmentInterface alloc]init];
    
  MJCSegmentInterface  *segmentInterface = [MJCSegmentInterface segmentinitWithFrame:CGRectMake(0,64, MJCScreenWidth,MJCScreenHeight) MJCSeMentTitleBarStyle:MJCSegMentTitlesClassicStyle];
    
    _segmentInterface = segmentInterface;
    segmentInterface.titleViewColor = [UIColor clearColor];
    segmentInterface.MJCSeMentTitleBarStyle = MJCSegMentTitlesClassicStyle;
//    segmentInterface.titleViewframe = CGRectMake(0,64,MJCScreenWidth,50);
//    segmentInterface.childViewframe = CGRectMake(0,0,MJCScreenWidth, MJCScreenHeight);
    
    segmentInterface.childScollEnabled = YES;
    segmentInterface.verticalLineHidden = YES;
//    segmentInterface.slideDelegate = self;
    
    segmentInterface.tabItemBackColor = [[UIColor whiteColor] colorWithAlphaComponent:0.5];
    
    
    //在添加标题栏之前做其他属性操作
    [segmentInterface intoTitlesArray:titlesArr];
    [self.view addSubview:segmentInterface];
    
    
    //添加控制器
    UITestViewController *vc = [[UITestViewController alloc]init];
//    [segmentInterface intoChildViewController:vc hostMainController:self];
    
    UITestViewController1 *vc1 = [[UITestViewController1 alloc]init];
    vc1.style = style;
//    [segmentInterface intoChildViewController:vc1 hostMainController:self];
    
    UITestViewController2 *vc2 = [[UITestViewController2 alloc]init];
//    [segmentInterface intoChildViewController:vc2 hostMainController:self];
    
    UITestViewController3 *vc3 = [[UITestViewController3 alloc]init];
    vc3.style = style;//传输数据
//    [segmentInterface intoChildViewController:vc3 hostMainController:self];
    
    UITestViewController4 *vc4 = [[UITestViewController4 alloc]init];
//    [segmentInterface intoChildViewController:vc4 hostMainController:self];
    
    NSArray *vcarrr = @[vc,vc1,vc2,vc3,vc4];
    [segmentInterface intoChildControllerArray:vcarrr hostMainController:self];;
    
    //    _segmentInterface.selectedSegmentIndex = 2;
}




@end
