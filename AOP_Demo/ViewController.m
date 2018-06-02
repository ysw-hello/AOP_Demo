//
//  ViewController.m
//  AOP_Demo
//
//  Created by 闫士伟 on 2018/6/2.
//  Copyright © 2018年 闫士伟. All rights reserved.
//

#import "ViewController.h"
#import "ModuleRouter.h"

#import "ModuleRouter+one.h"
#import "ModuleRouter+two.h"
#import "ModuleRouter+three.h"

@interface ViewController ()
{
    NSArray *_vcArr;
}


@end

@implementation ViewController

#pragma mark - life cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"组件化及AOP打点";
//    _vcArr = @[@"OneViewController", @"TwoViewController", @"ThreeViewController"];
}


#pragma mark - actions
- (IBAction)oneTouched:(id)sender {
//    [self.navigationController pushViewController:[NSClassFromString(_vcArr[0]) new] animated:YES];
    UIViewController *vc = [[ModuleRouter sharedInstance] viewControllerWithCallback:^(NSString *result) {
        
    }];
    [self.navigationController pushViewController:vc animated:YES];
}
- (IBAction)twoTouched:(id)sender {
//    [self.navigationController pushViewController:[NSClassFromString(_vcArr[1]) new] animated:YES];
    UIViewController *vc = [[ModuleRouter sharedInstance] viewControllerWithContentText:@"hello world"];
    [self.navigationController pushViewController:vc animated:YES];
}
- (IBAction)threeTouched:(id)sender {
//    [self.navigationController pushViewController:[NSClassFromString(_vcArr[2]) new] animated:YES];
    UIViewController *vc = [[ModuleRouter sharedInstance] viewController];
    [self.navigationController pushViewController:vc animated:YES];
}


@end
