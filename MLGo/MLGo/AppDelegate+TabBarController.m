//
//  AppDelegate+TabBarController.m
//  MLGo
//
//  Created by Maple on 2018/7/26.
//  Copyright © 2018 Maple. All rights reserved.
//

#import "AppDelegate+TabBarController.h"
#import <CYLTabBarController/CYLTabBarController.h>

#import "HomeVC.h"
#import "SearcVC.h"
#import "RankVC.h"
#import "JuHuaVC.h"
#import "MineVC.h"

@implementation AppDelegate (TabBarController)
    
- (void)configTabBarController {
    
    self.tabBarControler = [[CYLTabBarController alloc] init];
    [self customizeTabBarForController:self.tabBarControler];
    
    HomeVC *homeVC = [HomeVC new];
    SearcVC *searchVC = [SearcVC new];
    RankVC *rankVC = [RankVC new];
    JuHuaVC *juanHuaVC = [JuHuaVC new];
    MineVC *mineVC = [MineVC new];

    [self.tabBarControler setViewControllers: @[homeVC, searchVC,rankVC,juanHuaVC,mineVC]];
}
    
    /*
     *
     在`-setViewControllers:`之前设置TabBar的属性，
     *
     */
- (void)customizeTabBarForController:(CYLTabBarController *)tabBarController {
    
    NSDictionary *dict1 = @{
                            CYLTabBarItemTitle : @"首页",
                            CYLTabBarItemImage : @"home_normal",
                            CYLTabBarItemSelectedImage : @"home_highlight",
                            };
    NSDictionary *dict2 = @{
                            CYLTabBarItemTitle : @"搜索",
                            CYLTabBarItemImage : @"mycity_normal",
                            CYLTabBarItemSelectedImage : @"mycity_highlight",
                            };
    NSDictionary *dict3 = @{
                            CYLTabBarItemTitle : @"排行",
                            CYLTabBarItemImage : @"mycity_normal",
                            CYLTabBarItemSelectedImage : @"mycity_highlight",
                            };
    NSDictionary *dict4 = @{
                            CYLTabBarItemTitle : @"聚划算",
                            CYLTabBarItemImage : @"mycity_normal",
                            CYLTabBarItemSelectedImage : @"mycity_highlight",
                            };
    NSDictionary *dict5 = @{
                            CYLTabBarItemTitle : @"我的",
                            CYLTabBarItemImage : @"mycity_normal",
                            CYLTabBarItemSelectedImage : @"mycity_highlight",
                            };
    
    NSArray *tabBarItemsAttributes = @[ dict1, dict2, dict3, dict4, dict5 ];
    tabBarController.tabBarItemsAttributes = tabBarItemsAttributes;
}
@end
