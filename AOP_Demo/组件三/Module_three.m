//
//  Module_three.m
//  AOP_Demo
//
//  Created by 闫士伟 on 2018/6/2.
//  Copyright © 2018年 闫士伟. All rights reserved.
//

#import "Module_three.h"
#import "ThreeViewController.h"

@implementation Module_three

- (UIViewController *)Action_viewController {
    ThreeViewController *viewController = [[ThreeViewController alloc] init];
    return viewController;
}

@end
