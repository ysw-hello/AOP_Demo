//
//  ThreeViewController.m
//  AOP_Demo
//
//  Created by 闫士伟 on 2018/6/2.
//  Copyright © 2018年 闫士伟. All rights reserved.
//

#import "ThreeViewController.h"

@interface ThreeViewController ()

@end

@implementation ThreeViewController

+ (void)initialize {
    [super initialize];
    [NSObject setupThreeLogging];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"组件三";
}

@end
