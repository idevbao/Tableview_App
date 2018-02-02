//
//  myCell_Food.m
//  Core_Array
//
//  Created by Trúc Phương >_< on 06/09/2017.
//  Copyright © 2017 iDev Bao. All rights reserved.
//

#import "myCell_Food.h"

@implementation myCell_Food
-(instancetype)init_Cell_Food:(UIViewController*)view{
    self = [super initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"myCell_Food_1"];
 
#pragma mark - Img
    
    float height_row = (view.view.frame.size.height- view.navigationController.navigationBar.frame.size.height-view.tabBarController.tabBar.frame.size.height)/3;
    float width_row = (view.view.frame.size.width);
    img_cell_food = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0,width_row, height_row)];
//    img_cell_food.contentMode  = UIViewContentModeScaleAspectFit;
    [self addSubview:img_cell_food];

#pragma mark - lbl
    
    lbl_cell_food = [[UILabel alloc] initWithFrame:CGRectMake(width_row*2/3, height_row/5, width_row/4, height_row/2)];
    lbl_cell_food.backgroundColor = [UIColor clearColor];
    lbl_cell_food.textAlignment = NSTextAlignmentRight;
    lbl_cell_food.font = [UIFont fontWithName:@"TrebuchetMS-Bold" size:20];
    lbl_cell_food.textColor = [UIColor whiteColor];
    [img_cell_food addSubview:lbl_cell_food];
    
#pragma mark -  btn in img
    btn_add_sl = [[UIButton alloc]initWithFrame:CGRectMake(lbl_cell_food.frame.origin.x+(lbl_cell_food.frame.size.width)/3, 3.5*lbl_cell_food.frame.origin.y, 50, 50) ];
    btn_add_sl.backgroundColor = [UIColor whiteColor];
    [img_cell_food addSubview:btn_add_sl];

    return self;
}
-(void)setData_Food:(my_infoDATA*)data_food{
    img_cell_food.image =[UIImage imageNamed:data_food.nameIMG];
    lbl_cell_food.text = [NSString stringWithFormat:@"%@",data_food.nameTitle];
}

























- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
