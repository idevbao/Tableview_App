//
//  Screen_Acc.m
//  Core_Array
//
//  Created by Trúc Phương >_< on 05/09/2017.
//  Copyright © 2017 iDev Bao. All rights reserved.
//

#import "Screen_Acc.h"

@interface Screen_Acc ()

@end

@implementation Screen_Acc
-(instancetype)initView_Ctr:(CoreGUIController *)_CGUI{
    
    self = [super initView_Ctr:mainCGUctr];
    UIImage *nil_selected = [UIImage imageNamed:@"acc"];
    UIImage *selected = [UIImage imageNamed:@"acc"];
    nil_selected = [nil_selected imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    selected = [selected imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.tabBarItem = [[UITabBarItem alloc] initWithTitle:NULL image:nil_selected selectedImage:selected];
    self.tabBarItem.imageInsets = UIEdgeInsetsMake(6, 0, -6, 0);
    self.title = nil;
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];

}

























- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
