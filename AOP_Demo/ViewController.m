//
//  ViewController.m
//  AOP_Demo
//
//  Created by 闫士伟 on 2018/6/2.
//  Copyright © 2018年 闫士伟. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

#pragma mark - life cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"组件化及AOP打点";
}


#pragma mark - actions
- (IBAction)oneTouched:(id)sender {
    UIViewController *vc = [[ModuleRouter sharedInstance] viewControllerWithCallback:^(NSString *result) {
        
    }];
    [self.navigationController pushViewController:vc animated:YES];
}
- (IBAction)twoTouched:(id)sender {
    UIViewController *vc = [[ModuleRouter sharedInstance] viewControllerWithContentText:@"hello world"];
    [self.navigationController pushViewController:vc animated:YES];
}
- (IBAction)threeTouched:(id)sender {
    UIViewController *vc = [[ModuleRouter sharedInstance] viewController];
    [self.navigationController pushViewController:vc animated:YES];
}


@end
