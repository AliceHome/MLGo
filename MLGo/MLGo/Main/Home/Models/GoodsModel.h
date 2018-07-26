//
//  GoodsModel.h
//  MLGo
//
//  Created by Maple on 2018/7/26.
//  Copyright © 2018 Maple. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 
 "itemid": "574137537977",
 "imgurl": "https:\/\/img.alicdn.com\/bao\/uploaded\/i1\/2975638410\/TB2_h3qXi6guuRjy1XdXXaAwpXa_!!2975638410-0-item_pic.jpg_230x230.jpg",
 "title": "\u5357\u6781\u4eba\u6696\u5b9d\u5b9d\u8d34\u5bab\u5bd2\u6696\u8eab\u9632\u5bd2\u5e16\u81ea\u53d1\u70ed\u5e16\u8170\u8179\u90e8\u5973\u76ca\u6bcd\u8349\u6696\u8d34\u5173\u8282\u8d34",
 "goodsprice": "15.20",
 "coupon_price": "5.20",
 "quan": 10,
 "coupon_start_time": "01.01",
 "coupon_end_time": "07.31",
 "volume_hour": null,
 "volume_hour2": null,
 "volume_hourtd": null,
 "volume": "14",
 "video": "",
 "cid": 0,
 "yugu_price": "",
 "isnews": 0,
 "isjhs": null,
 "istqg": null,
 "ishaiwai": null,
 "shop_type": "B",
 "coupon_text": "\u5238\u6709\u6548\u671f<em>01.01-07.31<\/em>",
 "images": "http:\/\/www.lexianganyi.cn\/attachment\/headimg_1.jpg"
 
 */
@interface GoodsModel : NSObject

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *goodsprice;
@property (nonatomic, copy) NSString *coupon_price;
@property (nonatomic, copy) NSURL *imgurl;
@property (nonatomic, copy) NSString *coupon_text;
@end
