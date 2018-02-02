//
//  FindViewController.m
//  Core_Array
//
//  Created by Trúc Phương >_< on 04/09/2017.
//  Copyright © 2017 iDev Bao. All rights reserved.
//

#import "FindViewController.h"
#import "ViewController.h"

@interface FindViewController ()

@end



@implementation FindViewController
-(instancetype)initView_Ctr:(CoreGUIController *)_CGUI{
    self = [super initView_Ctr:mainCGUctr];
    UIImage *select_heart = [UIImage imageNamed:@"heart"];
    UIImage *un_heart1 = [UIImage imageNamed:@"heart1"];
   
    select_heart = [select_heart imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    un_heart1 = [un_heart1 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.tabBarItem = [[UITabBarItem alloc] initWithTitle:NULL image:select_heart selectedImage:un_heart1];
    

    self.tabBarItem.imageInsets = UIEdgeInsetsMake(6, 0, -6, 0);
    self.title = nil;
 
   
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    CGFloat padding = 20;
    CGFloat padding_width =10;
    CGFloat btn_height = (self.view.frame.size.height - self.navigationController.navigationBar.frame.size.height-self.tabBarController.tabBar.frame.size.height-12*padding)/3    ;
    CGFloat btn_width = (self.view.frame.size.width-3*padding_width)/2;
    CGPoint P_btn_home = CGPointMake(padding_width, self.navigationController.navigationBar.frame.size.height+2*padding);
    CGPoint P_lbl_title = CGPointMake(P_btn_home.x, P_btn_home.y+btn_height);
#pragma mark - Customzing  navi  Find
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = @"Tìm kiếm";
    
#pragma mark - Customzing For
    NSArray* array_lbl = [[NSArray alloc]initWithObjects:@"Hotday",@"Menu",@"Đặt chỗ",@"Đặt giao hàng",@"Coupon",@"Khám phá",@"LA_DO",@"......",@"......", nil];
    NSArray* array_btn = [[NSArray alloc]initWithObjects:@"Menu Hotday",@"menu",@"Đặt chỗ",@"Đặt giao hàng",@"Coupon",@"Khám phá",@"LA_DO",@"......",@"......", nil];

    for (int i =0 ; i< array_lbl.count; i++) {
        UIView * UIview_0=[[myView_Support alloc]initMyView_Support:(CGPoint)P_btn_home
                                                    _GPoint_lbl:(CGPoint)P_lbl_title
                                                           _img:(NSString*)array_btn[i]
                                                     _title_lbl:(NSString*)array_lbl[i]
                                                    _btn_height:(CGFloat)btn_height
                                                     _btn_width:(CGFloat)btn_width
                                                    _lbl_height:(CGFloat)2*padding
                                                 _padding_width:(CGFloat)padding_width];
            [self.view addSubview:UIview_0];
            P_btn_home = CGPointMake(padding_width+btn_width+P_btn_home.x,P_btn_home.y);
            P_lbl_title = CGPointMake(P_btn_home.x, P_btn_home.y+btn_height);
        
        if ((i+1)%2==0) {
            P_btn_home = CGPointMake(padding_width,P_btn_home.y+btn_height+3*padding);
            P_lbl_title = CGPointMake(P_btn_home.x,P_btn_home.y+btn_height);
        }
    }

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

*/

@end
