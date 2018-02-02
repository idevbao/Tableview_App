//
//  UITabBar+Change_height.m
//  Core_Array
//
//  Created by Trúc Phương >_< on 04/09/2017.
//  Copyright © 2017 iDev Bao. All rights reserved.
//

#import "UITabBar+Change_height.h"

@implementation UITabBar (Change_height)

int kTabBarHeight = 35;
-(CGSize)sizeThatFits:(CGSize)size
{
    CGSize sizeThatFits = [super sizeThatFits:size];
    sizeThatFits.height = kTabBarHeight;
    
    return sizeThatFits;
}
@end
