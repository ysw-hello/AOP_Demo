//
//  Module_One.m
//  AOP_Demo
//
//  Created by 闫士伟 on 2018/6/2.
//  Copyright © 2018年 闫士伟. All rights reserved.
//

#import "Module_One.h"
#import "OneViewController.h"

@implementation Module_One

- (UIViewController *)Action_viewController:(NSDictionary *)params {
    OneViewController *viewController = [[OneViewController alloc] init];
    return viewController;
}

@end
