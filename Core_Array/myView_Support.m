//
//  myView_Support.m
//  Core_Array
//
//  Created by Trúc Phương >_< on 05/09/2017.
//  Copyright © 2017 iDev Bao. All rights reserved.
//

#import "myView_Support.h"

@implementation myView_Support


-(instancetype)initMyView_Support:(CGPoint)CGPoint_btn
                      _GPoint_lbl:(CGPoint)CGPoint_lbl
                             _img:(NSString*)img
                       _title_lbl:(NSString*)_title_lbl
                      _btn_height:(CGFloat)_btn_height
                       _btn_width:(CGFloat)_btn_width
                      _lbl_height:(CGFloat)_lbl_height
                   _padding_width:(CGFloat)_padding_width{
#pragma mark - Customzing img  Find
    
    self =[super initWithFrame:CGRectMake(CGPoint_btn.x, CGPoint_btn.y, _btn_width,_btn_height+_lbl_height )];
    UIImageView* img_= [[UIImageView alloc]initWithFrame:CGRectMake(0,0,_btn_width,_btn_height)];
    img_.image = [UIImage imageNamed:img];
    [self addSubview:img_];
#pragma mark - Customzing lbl  Find
    
    UILabel* lbl = [[UILabel alloc]initWithFrame:CGRectMake(img_.frame.origin.x, img_.frame.origin.y+_btn_height, img_.frame.size.width, _lbl_height)];
    lbl.text = _title_lbl;
    lbl.textAlignment = NSTextAlignmentCenter;
    lbl.font = [UIFont fontWithName:@"TrebuchetMS-Bold" size:18];
    [self addSubview:lbl];
    
    
    
    
    return self;
}

@end
