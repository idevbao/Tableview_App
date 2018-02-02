//
//  add_View_Scroll.m
//  Core_Array
//
//  Created by Trúc Phương >_< on 07/09/2017.
//  Copyright © 2017 iDev Bao. All rights reserved.
//

#import "add_View_Scroll.h"


@implementation add_View_Scroll

-(instancetype)initWithItemview_scroll:(my_infoDATA*)_info_data and:(UIScrollView*)ScrollView and_CGUI:(CoreGUIController*)_CGUI{
    self= [super initWithFrame:CGRectMake(0,0, ScrollView.frame.size.width, ScrollView.frame.size.height)];
    CGUIctr = _CGUI;
    UIButton*btn_scroll = [[UIButton alloc]initWithFrame:CGRectMake(0, ScrollView.frame.size.height -50, 50, 50)];
    [self addSubview:btn_scroll];
    btn_scroll.backgroundColor = [UIColor whiteColor];
    [btn_scroll addTarget:self action:@selector(tapGet1:) forControlEvents:UIControlEventAllEvents];
    [self addSubview:btn_scroll];
    UITapGestureRecognizer *tap_View = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapGet:) ];
    [self addGestureRecognizer:tap_View];
    
  
    
    return self;
    
}
-(void)tapGet:(id)sender{
    NSLog(@"dsds");
}
-(void)tapGet1:(id)sender{
    NSLog(@"dsds");
}

@end
