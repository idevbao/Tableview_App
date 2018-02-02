//
//  CoreGUIController.h
//  Core_Array
//
//  Created by Trúc Phương >_< on 31/08/2017.
//  Copyright © 2017 iDev Bao. All rights reserved.
//
// quản lý việc khởi tạo màn hình nào :  UIWindow *windowCoreGUI;
#import <Foundation/Foundation.h>
#import <UIKit/UIView.h>
#import <UIKit/UIWindow.h>
#import "ScreenViewController.h"
#import "newScreen_1ViewController.h"
#import "ViewController.h"
#import "FindViewController.h"
#import "UITabBar+Change_height.h"
#import "Screen_Home.h"
#import "Screen_Acc.h"
#import "tableView_Food_ViewController.h"
#import "add_View_Scroll.h"




@interface CoreGUIController : NSObject{
    UIWindow *windowCoreGUI;
   
    ScreenViewController* SVCtroller;
    
    
    
}


-(instancetype)initCoreGUIController:(UIWindow*)_windowCoreGUI;
-(void)starRun;
-(void)finishStop:(NSString*)_in;
-(void)startRun;

@end

