//
//  ModuleRouter+one.h
//  AOP_Demo
//
//  Created by 闫士伟 on 2018/6/2.
//  Copyright © 2018年 闫士伟. All rights reserved.
//

#import "ModuleRouter.h"
#import <UIKit/UIKit.h>

@interface ModuleRouter (one)

- (UIViewController *)viewControllerWithCallback:(void(^)(NSString *result))callback;

@end
