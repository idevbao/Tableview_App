//
//  tableView_Food_ViewController.m
//  Core_Array
//
//  Created by Trúc Phương >_< on 05/09/2017.
//  Copyright © 2017 iDev Bao. All rights reserved.
//

#import "tableView_Food_ViewController.h"

@interface tableView_Food_ViewController ()

@end


@implementation tableView_Food_ViewController
#pragma mark - Navigation
-(instancetype)initView_Ctr:(CoreGUIController *)_CGUI{
    
    self = [super initView_Ctr:mainCGUctr];
    UIImage *nil_selected = [UIImage imageNamed:@"home"];
    UIImage *selected = [UIImage imageNamed:@"home1"];
    nil_selected = [nil_selected imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    selected = [selected imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.tabBarItem = [[UITabBarItem alloc] initWithTitle:NULL image:nil_selected selectedImage:selected];
    self.tabBarItem.imageInsets = UIEdgeInsetsMake(6, 0, -6, 0);
    self.title = nil;
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
#pragma mark - table_view_Plain
    UITableView*table_Food = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    [self.view addSubview: table_Food];
#pragma mark - controll table_view_Plain
    table_Food.dataSource = self;
    table_Food.delegate = self;
    // run ham set data
    [self load_data_Food_to_Array];
    
#pragma mark - ScrollView item info
    ScrollView_info_item = [[UIScrollView alloc]initWithFrame:CGRectMake(0, (self.view.frame.size.height- self.navigationController.navigationBar.frame.size.height-self.tabBarController.tabBar.frame.size.height)/3, self.view.frame.size.width, (self.view.frame.size.height- self.navigationController.navigationBar.frame.size.height-self.tabBarController.tabBar.frame.size.height)/2) ];
    [self.view addSubview:ScrollView_info_item];
    ScrollView_info_item.backgroundColor = [UIColor grayColor];
    
/// MVC
    my_infoDATA*_infoDATA_scroll = [[my_infoDATA alloc]init ];

    add_View_Scroll* view_item_scroll = [[add_View_Scroll alloc]initWithItemview_scroll:_infoDATA_scroll and:ScrollView_info_item and_CGUI:mainCGUctr];
    [ScrollView_info_item addSubview:view_item_scroll];
    ScrollView_info_item.hidden = _infoDATA_scroll._boolScrool;
    NSLog(@"%d",_infoDATA_scroll._boolScrool);
    
    
/// Not
    UIButton* close_scroll = [[UIButton alloc]initWithFrame:CGRectMake(ScrollView_info_item.frame.size.width-30, 00, 30, 30)];
    [close_scroll addTarget:self action:@selector( close_scroll_view) forControlEvents:UIControlEventAllEvents];
    close_scroll.backgroundColor = [UIColor redColor];
    [ScrollView_info_item addSubview:close_scroll];
    


}


#pragma mark - @protocol UITableViewDataSource<NSObject>

#pragma mark - @required

#pragma mark - numberOfRowsInSection :
//  bao nhiêu Dòng ở Section thứ mấy?
//  lặp lại theo số Section -> ^
//  ở đây 1 Section dạng Plain -> return số dòng:
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return  arr_data_Food.count;
    // có bao nhiêu object trong arr thì  tạo bấy nhiêu cell
}


#pragma mark - cellForRowAtIndexPath :
//  mày đang chọn indexPath ở dòng thứ mấy? Section thư mấy?
//  lặp lại theo số Dòng Row -> ^
//  ở đây 1 Section dạng Plain -> return số dòng:
//  ở đây là Section = 0 ; row = 0->9
//  cell nằm trong Row
//  indexpath vị trí Cell
//  cơ chế các cell giống nhau được lưu vào bộ nhớ vùng Stack không cần khởi tạo lại vì việc kéo thả tableview -> vẽ các row làm tốn bộ nhớ : alloc
//  [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"dinhdanh"]; -> luu lai voi 1 dinh danh

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    myCell_Food*cell = (myCell_Food*)[tableView dequeueReusableCellWithIdentifier:@"myCell_Food_1"];                // kiem tra da ton tai chua

    if (cell == nil) {// vung ton bo nho
        cell =[[myCell_Food alloc]init_Cell_Food:self];
    }
#pragma mark - truyen tung phan tu idex cua array vao tung row
    [cell setData_Food:[arr_data_Food objectAtIndex:indexPath.row]];
    return  cell;
}

// height row
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    CGFloat height_row = (self.view.frame.size.height- self.navigationController.navigationBar.frame.size.height-self.tabBarController.tabBar.frame.size.height)/3;
    return height_row;
}
#pragma mark - func load dữ liệu vào class My_cell_infoData -> tạo số row luôn -> Run hàm
-(void)load_data_Food_to_Array{
    arr_data_Food = [[NSMutableArray alloc]init];
    my_infoDATA *_load_infoDATA = [[my_infoDATA alloc] init];
    for (int i =0; i<10; i++) {
        
        _load_infoDATA.nameIMG =@"Coupon.png";
        _load_infoDATA.nameTitle =@"Giảm giá.png";
        [arr_data_Food addObject:_load_infoDATA];
        
        _load_infoDATA = [[my_infoDATA alloc] init];

        _load_infoDATA.nameIMG =@"img.jpeg";
        _load_infoDATA.nameTitle =@"Khám phá";
        [arr_data_Food addObject:_load_infoDATA];

        _load_infoDATA = [[my_infoDATA alloc] init];
        _load_infoDATA.nameIMG =@"menu";
        _load_infoDATA.nameTitle =@"Menu";
        [arr_data_Food addObject:_load_infoDATA];
    }
  
}
















-(void)close_scroll_view{
    ScrollView_info_item.hidden = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)get_data_bool:(my_infoDATA*)bool_{
    
    return bool_._boolScrool;
}

@end

//  tạo 1 cell kế thừa lại 
//UITableViewCell*cell = [tableView dequeueReusableCellWithIdentifier:@"dinhdanh"];
//UILabel*lbl;
//if (cell == nil) {// vung ton bo nho
//    cell =[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"dinhdanh"];
//    NSLog(@"%ld",(long)indexPath.row);
//    lbl =[[UILabel alloc] initWithFrame:CGRectMake(50, 0, self.view.frame.size.width,cell.frame.size.height )];
//    lbl.text = @"Content Cell";
//}
//
//[cell.contentView addSubview:lbl];

// remove data bang array xong load lai tableview

