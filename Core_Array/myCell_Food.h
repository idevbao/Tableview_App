//
//  myCell_Food.h
//  Core_Array
//
//  Created by Trúc Phương >_< on 06/09/2017.
//  Copyright © 2017 iDev Bao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "my_infoDATA.h"

@interface myCell_Food : UITableViewCell{
    UILabel*lbl_cell_food;
    UIImageView*img_cell_food;
    UIButton*btn_add_sl;

}
-(instancetype)init_Cell_Food:(UIViewController*)view;
-(void)setData_Food:(my_infoDATA*)data_food;

@end
