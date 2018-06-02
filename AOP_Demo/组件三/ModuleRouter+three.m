//
//  ModuleRouter+three.m
//  AOP_Demo
//
//  Created by 闫士伟 on 2018/6/2.
//  Copyright © 2018年 闫士伟. All rights reserved.
//

#import "ModuleRouter+three.h"

@implementation ModuleRouter (three)

- (UIViewController *)viewController {
    return [self performTarget:@"Three" action:@"viewController" params:nil shouldCacheTarget:NO];
}

@end
