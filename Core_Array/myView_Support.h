//
//  myView_Support.h
//  Core_Array
//
//  Created by Trúc Phương >_< on 05/09/2017.
//  Copyright © 2017 iDev Bao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface myView_Support : UIView{

}
-(instancetype)initMyView_Support:(CGPoint)CGPoint_btn
                      _GPoint_lbl:(CGPoint)CGPoint_lbl
                             _img:(NSString*)img
                       _title_lbl:(NSString*)_title_lbl
                      _btn_height:(CGFloat)_btn_height
                       _btn_width:(CGFloat)_btn_width
                      _lbl_height:(CGFloat)_lbl_height
                   _padding_width:(CGFloat)_padding_width;

@end

