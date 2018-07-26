//
//  UILabel+extension.m
//  MLGo
//
//  Created by Maple on 2018/7/26.
//  Copyright © 2018 Maple. All rights reserved.
//

#import "UILabel+extension.h"




@implementation UILabel (extension)

- (void)setStrikethroughText:(NSString *)strikethroughText {
    if (strikethroughText.length == 0) {
        return;
    }
    self.attributedText = [[NSAttributedString alloc] initWithString:strikethroughText attributes:@{NSStrikethroughStyleAttributeName:@(1)}];

}

- (NSString *)strikethroughText {
    return  nil;
}
@end
