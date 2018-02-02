//
//  CoreGUIController.m
//  Core_Array
//
//  Created by Trúc Phương >_< on 31/08/2017.
//  Copyright © 2017 iDev Bao. All rights reserved.
//

#import "CoreGUIController.h"



@implementation CoreGUIController

//  dựng 1 màn hình -> vào 1 Window {con trỏ quản lý phân biệt màn hình nào}
- (instancetype)initCoreGUIController:(UIWindow*)_windowCoreGUI
{
    self = [super init];
        windowCoreGUI = _windowCoreGUI;
    return self;
}
-(void)starRun{
#pragma mark -  UINavigationController
    [[UINavigationBar appearance]setBackgroundColor:[UIColor whiteColor] ];
    [[UINavigationBar appearance]setTitleTextAttributes: @{NSFontAttributeName: [UIFont fontWithName:@"TrebuchetMS-Bold" size:25.0f]}];

    
#pragma mark -   Manh hinh HOME
    Screen_Home* Screen_home= [[Screen_Home alloc]initView_Ctr:self ];
    UINavigationController*NaviHome = [[UINavigationController alloc] init];
    [NaviHome pushViewController:Screen_home animated:YES];
    NaviHome.navigationBar.topItem.title = @"THE LADO Coffee";
    NaviHome.navigationBar.backgroundColor = [UIColor whiteColor];

#pragma mark -   Manh hinh Acc
    Screen_Acc* Screen_acc= [[Screen_Acc alloc]initView_Ctr:self ];
    UINavigationController*NaviAcc = [[UINavigationController alloc] init];
    [NaviAcc pushViewController:Screen_acc animated:YES]; 
    NaviAcc.navigationBar.topItem.title = @"THE LADO Coffee";
    NaviAcc.navigationBar.backgroundColor = [UIColor whiteColor];

#pragma mark -   Manh hinh Table_view_Danhmuc_food
    tableView_Food_ViewController* tableView_Food= [[tableView_Food_ViewController alloc]initView_Ctr:self ];
    UINavigationController*Navi_tableView_food = [[UINavigationController alloc] init];
    [Navi_tableView_food pushViewController:tableView_Food animated:YES];
    Navi_tableView_food.navigationBar.topItem.title = @"THE LADO Coffee";
    Navi_tableView_food.navigationBar.backgroundColor = [UIColor whiteColor];

    
#pragma mark -   Manh hinh newScreen_0

//  tao 1 man hinh View add vao window
    ScreenViewController* newScreen_0 = [[ScreenViewController alloc]initView_Ctr:self];
//  khoi tao 1 doi tuong viewCtroller de hien thi len window
//  viewCtroller co nhiem vu quan ly tat ca cac doi tuong ben trong view cua no
    UINavigationController* NaviS_0;
    NaviS_0 = [[UINavigationController alloc] init];
   
    [windowCoreGUI setRootViewController:NaviS_0];
//    windowCoreGUI.rootViewController = newScreen_0;
    [NaviS_0 pushViewController:newScreen_0 animated:YES];
    NaviS_0.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"icon"]];
    
    
#pragma mark -   Manh hinh FindCtroller
    
    FindViewController* Screen_Find= [[FindViewController alloc]initView_Ctr:self ];
    UINavigationController*NaviFind = [[UINavigationController alloc] init];
    [NaviFind pushViewController:Screen_Find animated:YES];
#pragma mark -   UITabBarController
//  NSAraay != NSStableArray: add delete đối tượng trong mảng
    UITabBarController * tabBar= [[UITabBarController alloc]init];
    NSArray * itemTab3 = [[NSArray alloc]initWithObjects:NaviHome,NaviFind,NaviAcc,Navi_tableView_food,nil ];
    tabBar.viewControllers= itemTab3;
    [[UITabBar appearance] setTintColor:[UIColor redColor]];
    windowCoreGUI.rootViewController = tabBar;
}








#pragma mark -   xu ly ben add_view_scroll




























//  bam return ben keyboard Screenview lv < lv CGUI
-(void)finishStop:(NSString*)_in{
#pragma mark -   Manh hinh newScreen_1
    newScreen_1ViewController*newScreen_1  = [[newScreen_1ViewController alloc]initView_Ctr:self];
    [newScreen_1 setInPut:_in];
//    [windowCoreGUI setRootViewController:Navi];
    UINavigationController* NaviHome1;
    NaviHome1 = [[UINavigationController alloc] init];
    [NaviHome1 pushViewController:newScreen_1 animated:YES];
    newScreen_1.navigationItem.title = _in;
    newScreen_1.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"icon"]];
    windowCoreGUI.rootViewController = newScreen_1;


}
-(void)startRun{

    newScreen_1ViewController*newScreen_1  = [[newScreen_1ViewController alloc]initView_Ctr:self];
    UINavigationController* NaviHome1;
    NaviHome1 = [[UINavigationController alloc] init];
    [NaviHome1 pushViewController:newScreen_1 animated:YES];
    newScreen_1.view.backgroundColor = [UIColor redColor];
    newScreen_1.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"icon"]];
    windowCoreGUI.rootViewController = NaviHome1;
}
@end
//
//UIEdgeInsets insets = UIEdgeInsetsMake(10, 0, 0, 0);
//UIImage *alignedImage = [[UIImage imageNamed:@"camera"] imageWithAlignmentRectInsets:insets];
//[[UINavigationBar appearance] setBackIndicatorImage:alignedImage];
//[[UINavigationBar appearance] setBackIndicatorTransitionMaskImage:alignedImage];
