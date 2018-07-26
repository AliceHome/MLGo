//
//  HomeAPI.m
//  MLGo
//
//  Created by Maple on 2018/7/26.
//  Copyright © 2018 Maple. All rights reserved.
//

#import "HomeAPI.h"
#import <MJExtension/MJExtension.h>
#import <AFNetworking/AFNetworking.h>
#import "GoodsModel.h"

@implementation HomeAPI


+ (void)homeListData:(NSString *)urlString
               param: (id)param
        successBlock:(SucessBlock) successBlock
           failBlock:(FailBlock)failBlock {
    
 
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    
    [manager GET:urlString parameters:param progress:^(NSProgress * _Nonnull downloadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSDictionary *dic = responseObject;
        NSArray *models = [GoodsModel mj_objectArrayWithKeyValuesArray:dic[@"data"]];
        
        successBlock(models);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
    }];
    
//    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
//    AFURLSessionManager *manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:configuration];
//
//
//    NSURL *URL = [NSURL URLWithString:urlString];
//    NSURLRequest *request = [NSURLRequest requestWithURL:URL];
//
//    NSURLSessionDataTask *dataTask = [manager dataTaskWithRequest:request uploadProgress:^(NSProgress * _Nonnull uploadProgress) {
//
//    } downloadProgress:^(NSProgress * _Nonnull downloadProgress) {
//
//    } completionHandler:^(NSURLResponse * _Nonnull response, id  _Nullable responseObject, NSError * _Nullable error) {
//
//    }];
//    [dataTask resume];
    
}
@end
