//
//  CusNavViewController.m
//  PushHPDemo
//
//  Created by 朱信磊 on 16/6/23.
//  Copyright © 2016年 朱信磊. All rights reserved.
//

#import "CusNavViewController.h"

@interface CusNavViewController ()

@end

@implementation CusNavViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(BOOL)shouldAutorotate{
    return [self.topViewController shouldAutorotate];
}
//支持的方向
- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return [self.topViewController supportedInterfaceOrientations];;
}

@end
