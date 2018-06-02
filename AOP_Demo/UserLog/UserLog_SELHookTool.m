//
//  UserLog_SELHookTool.m
//  AOP_Demo
//
//  Created by 闫士伟 on 2018/6/2.
//  Copyright © 2018年 闫士伟. All rights reserved.
//

#import "UserLog_SELHookTool.h"
#import <Aspects/Aspects.h>
#import "UserLogConfigDefine.h"

@implementation UserLog_SELHookTool

+ (void)setupWithConfiguration:(NSDictionary *)configs {
    //hook 类对象
    [UIViewController aspect_hookSelector:@selector(viewWillAppear:)
                              withOptions:AspectPositionAfter
                               usingBlock:^(id<AspectInfo> aspectInfo) {
                                   dispatch_async(dispatch_get_global_queue(0, 0), ^{
                                       NSString *className = NSStringFromClass([[aspectInfo instance] class]);
                                       NSString *logName = configs[className][UL_ViewDidAppear];
                                       NSLog(@"logName:%@", logName);
                                   });
                               }
                                    error:NULL];
    
    //hook 实例对象
    for (NSString *className in configs) {
        Class cls = NSClassFromString(className);
        NSDictionary *config = configs[className];
        
        if (config[UL_TrackedEvents]) {
            for (NSDictionary *event in config[UL_TrackedEvents]) {
                SEL selector = NSSelectorFromString(event[UL_EventSelectorName]);
                
                [cls aspect_hookSelector:selector
                             withOptions:AspectPositionAfter
                              usingBlock:^(id<AspectInfo> aspectInfo) {
                                  dispatch_async(dispatch_get_global_queue(0, 0), ^{
                                      NSLog(@"EventName:%@", event[UL_EventName]);
                                  });
                              }
                                   error:NULL];
            }
        }
    }
    
}

@end
