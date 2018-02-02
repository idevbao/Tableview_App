//
//  tableView_Food_ViewController.h
//  Core_Array
//
//  Created by Trúc Phương >_< on 05/09/2017.
//  Copyright © 2017 iDev Bao. All rights reserved.
//

#import "ViewController.h"
#import "myCell_Food.h"
#import "my_infoDATA.h"
#import "add_View_Scroll.h"

@interface tableView_Food_ViewController : ViewController <UITableViewDataSource,UITableViewDelegate>
{
    NSMutableArray * arr_data_Food;
    
    // hien thi tong tin Food
    UIScrollView* ScrollView_info_item;
}
@end
