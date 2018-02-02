//
//  newScreen_1ViewController.m
//  Core_Array
//
//  Created by Trúc Phương >_< on 01/09/2017.
//  Copyright © 2017 iDev Bao. All rights reserved.
//

#import "newScreen_1ViewController.h"
#import "ViewController.h"
#import "ScreenViewController.h"
//#import "CoreGUIController.h"

@interface newScreen_1ViewController ()

@end

@implementation newScreen_1ViewController

//-(instancetype)init_CGUI_newScreen_1:(CoreGUIController*)_CGUI{
//    self = [super init];
//    mainCGUI = _CGUI;
//    return self;
//}

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *btnCamera = [[UIButton alloc]init];
    [btnCamera setImage:[UIImage imageNamed:@"pacman"] forState:UIControlStateNormal];
    btnCamera.frame = CGRectMake(0, 0, 34, 34);
    
    [btnCamera addTarget:self action:@selector(btnCamera) forControlEvents:UIControlEventTouchUpInside];
    UIButton *btnCall = [[UIButton alloc]init];
    [btnCall setImage:[UIImage imageNamed:@"piglet"] forState:UIControlStateNormal];
    btnCall.frame = CGRectMake(0, 0, 34, 34);
    [btnCall addTarget:self action:@selector(btnCamera) forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *_call = [[UIBarButtonItem alloc]initWithCustomView:btnCall];
    
    UIBarButtonItem *_camera = [[UIBarButtonItem alloc]initWithCustomView:btnCamera];
    NSArray* rightBarButtonItems  = [NSArray arrayWithObjects:_call,_camera, nil];
//   
//    UIBarButtonItemGroup * itemG = [[UIBarButtonItemGroup alloc]initWithBarButtonItems:barButtonItems representativeItem:_call ];
    
    self.navigationItem.rightBarButtonItems = rightBarButtonItems;
  

    
    
//    UIActionSheet* alert = [[UIActionSheet alloc]initWithTitle:@"Cảnh báo khu vực hoạt động của iDEV không phận sự cấm vào" delegate:self cancelButtonTitle:@"Now!" destructiveButtonTitle:nil otherButtonTitles:@"Go out!", nil ];
//    [alert showInView:self.view];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)btnCamera{
    NSString*Thongbao;
    Thongbao = _inPut;
    NSLog(@"%@Finish FUN",_inPut);
//    UIActionSheet* alert = [[UIActionSheet alloc]initWithTitle:[Thongbao stringByAppendingString:@"!"] delegate:self cancelButtonTitle:@"Now!" destructiveButtonTitle:nil otherButtonTitles:@"Go out!", nil ];
//    [alert showInView:self.view];
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
