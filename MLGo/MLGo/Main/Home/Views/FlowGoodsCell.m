//
//  FlowGoodsCell.m
//  MLGo
//
//  Created by Maple on 2018/7/26.
//  Copyright © 2018 Maple. All rights reserved.
//

#import "FlowGoodsCell.h"
#import "UILabel+extension.h"
#import <SDWebImage/UIImageView+WebCache.h>

@interface FlowGoodsCell()
@property (weak, nonatomic) IBOutlet UIImageView *imageV;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *goodsPriceLabel;
@property (weak, nonatomic) IBOutlet UILabel *cuponsPriceLabel;

@end

@implementation FlowGoodsCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setGoodModel:(GoodsModel *)goodModel {
    self.titleLabel.text = goodModel.title;
    self.goodsPriceLabel.strikethroughText = goodModel.goodsprice;
    self.cuponsPriceLabel.text = [NSString stringWithFormat:@"券后价：%@",goodModel.coupon_price];
    [self.imageV sd_setImageWithURL:goodModel.imgurl];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

@end
