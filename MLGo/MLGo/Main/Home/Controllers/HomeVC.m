//
//  HomeVC.m
//  MLGo
//
//  Created by Maple on 2018/7/26.
//  Copyright © 2018 Maple. All rights reserved.
//

#import "HomeVC.h"
#import "HomeAPI.h"
#import "FlowGoodsCell.h"

@interface HomeVC ()

@property (nonatomic, copy)NSArray *dataSource;

@end

@implementation HomeVC
-(NSString *)convertToJsonData:(NSDictionary *)dict

{
    
    NSError *error;
    
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dict options:NSJSONWritingPrettyPrinted error:&error];
    
    NSString *jsonString;
    
    if (!jsonData) {
        
        NSLog(@"%@",error);
        
    }else{
        
        jsonString = [[NSString alloc]initWithData:jsonData encoding:NSUTF8StringEncoding];
        
    }
    
    NSMutableString *mutStr = [NSMutableString stringWithString:jsonString];
    
    NSRange range = {0,jsonString.length};
    
    //去掉字符串中的空格
    
    [mutStr replaceOccurrencesOfString:@" " withString:@"" options:NSLiteralSearch range:range];
    
    NSRange range2 = {0,mutStr.length};
    
    //去掉字符串中的换行符
    
    [mutStr replaceOccurrencesOfString:@"\n" withString:@"" options:NSLiteralSearch range:range2];
    
    return mutStr;
    
}

- (void)viewDidLoad {
    NSDictionary *dic =@{@"fields":@{},
                                      @"where":@{
                                              @"act":@"getlist",
                                              @"currentSlt":@0,
                                              @"keyWd":@"",
                                              @"priceSt":@"",
                                              @"priceEd":@"",
                                              @"showtype":@"",
                                              @"wareTypeId":@0,
                                              @"dluID":@"25922"},
                                      @"skip":@0,
                                      @"limit":@40};
    
    
    [super viewDidLoad];
    NSString *requstParam = [self convertToJsonData:dic];
    NSLog(@"%@",requstParam);
    dic = @{@"filter":requstParam};
    [HomeAPI homeListData:@"http://www.lexianganyi.cn/a/active/apiapp.html"
                    param:dic
             successBlock:^(id data ) {
                 self.dataSource = data;
                 [self.tableView reloadData];
    } failBlock:^(NSString * msg) {
        
    }];
    
    [self.tableView registerNib:[UINib nibWithNibName:@"FlowGoodsCell" bundle:nil
                                 ] forCellReuseIdentifier:@"FlowGoodsCell"];
}
    
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return  self.dataSource.count;
}
    
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    FlowGoodsCell *cell = [tableView dequeueReusableCellWithIdentifier:@"FlowGoodsCell" forIndexPath:indexPath];
    cell.goodModel = self.dataSource[indexPath.row];
    return cell;
}
    
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return  100;
}
    
    
    @end
