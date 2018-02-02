//
//  Screen_Home.m
//  Core_Array
//
//  Created by Trúc Phương >_< on 05/09/2017.
//  Copyright © 2017 iDev Bao. All rights reserved.
//

#import "Screen_Home.h"

@interface Screen_Home ()

@end

@implementation Screen_Home

-(instancetype)initView_Ctr:(CoreGUIController *)_CGUI{
    
    self = [super initView_Ctr:mainCGUctr];
    UIImage *nil_selected = [UIImage imageNamed:@"home"];
    UIImage *selected = [UIImage imageNamed:@"home1"];    
    nil_selected = [nil_selected imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    selected = [selected imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.tabBarItem = [[UITabBarItem alloc] initWithTitle:NULL image:nil_selected selectedImage:selected];
    self.tabBarItem.imageInsets = UIEdgeInsetsMake(6, 0, -6, 0);
    self.title = nil;
    return self;
}
#pragma mark - Customzing Screen Home
- (void)viewDidLoad {
    [super viewDidLoad];
#pragma mark - Array lbl
    
    NSArray* array_lbl = [[NSArray alloc]initWithObjects:@"Hotday",@"Menu",@"Đặt chỗ",@"Đặt giao hàng",@"Coupon",@"Khám phá",@"LA_DO",@"......",@"......", nil];
    NSArray* array_btn = [[NSArray alloc]initWithObjects:@"Menu Hotday",@"menu",@"Đặt chỗ",@"Đặt giao hàng",@"Coupon",@"Khám phá",@"LA_DO",@"......",@"......", nil];

    self.view.backgroundColor = [UIColor whiteColor];
    CGFloat padding = 20;
    CGFloat padding_width =10;
    CGFloat btn_height = (self.view.frame.size.height - self.navigationController.navigationBar.frame.size.height-self.tabBarController.tabBar.frame.size.height-12*padding)/3    ;
    CGFloat btn_width = (self.view.frame.size.width-3*padding_width)/2;
    CGPoint P_btn_home = CGPointMake(padding_width, self.navigationController.navigationBar.frame.size.height+2*padding);
    CGPoint P_lbl_title = CGPointMake(P_btn_home.x, P_btn_home.y+btn_height);
    for (int i = 0; i<9; i++) {
#pragma mark - Customzing btn Home
        
        UIButton *btn_home = [[UIButton alloc]initWithFrame:CGRectMake(P_btn_home.x,P_btn_home.y , btn_width, btn_height)];
        [btn_home setBackgroundImage : [UIImage imageNamed:[NSString stringWithFormat:@"%@", array_btn[i]]]forState:UIControlStateNormal];
#pragma mark - Properties btn Home
        
        btn_home.backgroundColor = [UIColor whiteColor];
        btn_home.contentMode=UIStackViewAlignmentCenter;
        btn_home.layer.cornerRadius = 6;
        btn_home.clipsToBounds=YES;
#pragma mark - Customzing lbl title
        
        UILabel *lbl_title = [[UILabel alloc]initWithFrame:CGRectMake(P_lbl_title.x, P_lbl_title.y, btn_width, 2*padding) ];
        NSLog(@"%@",lbl_title.text = array_lbl[i]);
#pragma mark - Properties lbl title
        
        lbl_title.textAlignment = NSTextAlignmentCenter;
        lbl_title.font = [UIFont fontWithName:@"TrebuchetMS-Bold" size:18];
        
#pragma mark - Customzing add

        [self.view addSubview:btn_home];
        [self.view addSubview:lbl_title];
        P_btn_home = CGPointMake(padding_width+btn_width+P_btn_home.x,P_btn_home.y);
        P_lbl_title = CGPointMake(P_btn_home.x, P_btn_home.y+btn_height);
        if (i== 2||i==4||i==6) {
            P_btn_home = CGPointMake(padding_width,P_btn_home.y+btn_height+3*padding);
            P_lbl_title = CGPointMake(P_btn_home.x,P_btn_home.y+btn_height);
        }
    }

}










- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
