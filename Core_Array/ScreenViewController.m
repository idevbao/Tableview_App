//
//  ScreenViewController.m
//  Core_Array
//
//  Created by Trúc Phương >_< on 01/09/2017.
//  Copyright © 2017 iDev Bao. All rights reserved.
//

#import "ScreenViewController.h"
#import "CoreGUIController.h"

@interface mytxtF : UITextField
// Customizing TextField
@end

@implementation mytxtF

static CGFloat leftMargin = 10; // cach bien trai khoang:
// override 2 method
// override method hien thi text trong textfield
- (CGRect)textRectForBounds:(CGRect)bounds
{
    bounds.origin.x += leftMargin;
    
    return bounds;
}
// override method editing text trong textfield
- (CGRect)editingRectForBounds:(CGRect)bounds
{
    bounds.origin.x += leftMargin;
    
    return bounds;
}
@end


@interface ScreenViewController ()
{
    UIButton *hiddenKeyboard;
    mytxtF * txtF;
}
@end



@implementation ScreenViewController
#pragma mark - CGUI_control
//-(instancetype)init_CGUI_Screen:(CoreGUIController*)_CGUI{
//    self = [super init];
//    mainCGUI = _CGUI;
//    return self;
//}




- (void)viewDidLoad {
    [super viewDidLoad];
    CGFloat padding = 30;
    hiddenKeyboard = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [self.view addSubview:hiddenKeyboard];
    
    [hiddenKeyboard addTarget:self action:@selector(hiddenKey) forControlEvents:UIControlEventTouchDown];
//    hiddenKeyboard.backgroundColor = [UIColor grayColor];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    lbl = [[UILabel alloc]initWithFrame:CGRectMake(padding,self.navigationController.navigationBar.frame.size.height+padding, self.view.frame.size.width-(2*padding), padding) ];
    lbl.backgroundColor = [UIColor whiteColor];
    lbl.layer.borderColor = [[UIColor orangeColor ] CGColor];
    lbl.layer.cornerRadius = 5;
    lbl.text = @"Array";
    lbl.layer.borderWidth =1;
    [self.view addSubview:lbl];
    
    
   
    txtF= [[mytxtF alloc]initWithFrame:CGRectMake(lbl.frame.origin.x, lbl.frame.origin.y+2*padding, lbl.frame.size.width, padding)];
    txtF.backgroundColor = [UIColor whiteColor];
    
    txtF.layer.borderColor = [[UIColor orangeColor ] CGColor];
    txtF.layer.borderWidth =1;
    txtF.placeholder = @"Input :D";
    [self.view addSubview:txtF];
    txtF.layer.cornerRadius = 2;
    
    
    
    
    txtF.delegate = self;
// btn
    
    UIButton* btn = [[UIButton alloc]initWithFrame:CGRectMake((self.view.frame.size.width-self.view.frame.size.width/2)/2, txtF.frame.origin.y+2*padding, self.view.frame.size.width/2, 2*padding) ];
    [btn setTitle:@"OK" forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor orangeColor];
    [btn addTarget:self action:@selector(btn) forControlEvents:UIControlEventTouchUpInside];
    btn.layer.cornerRadius = 5;

    [self.view  addSubview:btn];
    
    
    /// item back
    
    UIBarButtonItem *newBackButton =
    [[UIBarButtonItem alloc] initWithTitle:@"home"
                                     style:UIBarButtonItemStylePlain
                                    target:nil
                                    action:nil];
    [[self navigationItem] setBackBarButtonItem:newBackButton];
    
// btn customzing
// padding = space 2 bien MHinh
    
    int heightlbl =50; //  Width btn
    int n = ((self.view.bounds.size.width-2*padding)/heightlbl); // so luong button co the dc tao trong view
    NSLog(@"%d",n);
    
    CGFloat space = (self.view.bounds.size.width -2*padding-heightlbl)/(n-2); // 1 button duoc tao ra truoc
    NSLog(@"%f",space);
    
    CGPoint point = CGPointMake(padding, btn.frame.origin.y+heightlbl+padding);// toa do x y cua button
    for (int i =0; i<30; i++) {
        
        UIButton*button =[[UIButton alloc]initWithFrame:CGRectMake(point.x, point.y, heightlbl, heightlbl) ];
        button.backgroundColor = [UIColor lightGrayColor];
        [button setBackgroundImage:[UIImage imageNamed:@"icon"] forState:UIControlStateNormal];
        button.layer.cornerRadius = 5;
        
        [self.view addSubview:button];
        point = CGPointMake(space+point.x, point.y);// toa do x + space, theo hang ngang toa do x buton thay doi
        if (i==(n-2)||i==(2*(n-2)+1)||i==(3*(n-2)+2)||i==(4*(n-2)+3)) {
            point = CGPointMake(padding, point.y+padding+heightlbl);// toa do y cua button thay doi
        }
        int dem =i+1;
        button.tag = dem;
        [button addTarget:self action:@selector(targetButton:) forControlEvents:UIControlEventTouchUpInside];
        NSMutableArray * Mang = [[NSMutableArray alloc]init];
        [Mang addObject:@"1"];
                                 
    }
}

-(void)targetButton:(id)sender{
    UIButton* button = (UIButton*)sender;
    if (button.tag == 1||button.tag == 2) {
        NSString*Thongbao;
        Thongbao =[NSString stringWithFormat:@"%ld",button.tag] ;
    
//        UIActionSheet* alert = [[UIActionSheet alloc]initWithTitle:[Thongbao stringByAppendingString:@"!"] delegate:self cancelButtonTitle:@"Now!" destructiveButtonTitle:nil otherButtonTitles:@"Go out!", nil ];
//        [alert showInView:self.view];
        
    }
}

-(void)btn{
    NSLog(@"finish Screen -> newScreen_1");
    [mainCGUctr  finishStop:txtF.text];
    NSLog(@"%@",txtF.text);
    
    
    
    
}


-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    
     [mainCGUctr finishStop:txtF.text];
    [textField resignFirstResponder];

    return TRUE;
}
-(BOOL)hiddenKey{
    NSLog(@"touch dow");
    [txtF resignFirstResponder];
    return TRUE;
}



/*
#pragma mark - Navigation
*/

@end
