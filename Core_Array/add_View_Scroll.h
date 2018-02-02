//
//  add_View_Scroll.h
//  Core_Array
//
//  Created by Trúc Phương >_< on 07/09/2017.
//  Copyright © 2017 iDev Bao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "my_infoDATA.h"
#import "tableView_Food_ViewController.h"
#import "CoreGUIController.h"

@interface add_View_Scroll : UIView{
    CoreGUIController*CGUIctr;
    
}
-(instancetype)initWithItemview_scroll:(my_infoDATA* )_info_data and:(UIScrollView*)ScrollView and_CGUI:(CoreGUIController*)_CGUI;
-(void)tapGet:(id)sender;
-(void)tapGet1:(id)sender;
@end
