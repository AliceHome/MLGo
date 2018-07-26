//
//  HomeAPI.h
//  MLGo
//
//  Created by Maple on 2018/7/26.
//  Copyright © 2018 Maple. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^SucessBlock)(id);
typedef void(^FailBlock)(NSString *);

@interface HomeAPI : NSObject

+ (void)homeListData:(NSString *)urlString
               param: (id)param
        successBlock:(SucessBlock) successBlock
           failBlock:(FailBlock)failBlock;
@end
