//
//  ViewController.h
//  Core_Array
//
//  Created by Trúc Phương >_< on 01/09/2017.
//  Copyright © 2017 iDev Bao. All rights reserved.
//

#import <UIKit/UIKit.h>
@class CoreGUIController;
// init 1 view được add vào window thông qua  CoreGUIController* mainCGUctr;

@interface ViewController : UIViewController
{
    CoreGUIController* mainCGUctr;
    
}


-(instancetype)initView_Ctr:(CoreGUIController*)_CGUI;
@end
