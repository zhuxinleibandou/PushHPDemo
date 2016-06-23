//
//  ThreeViewController.m
//  PushHPDemo
//
//  Created by 朱信磊 on 16/6/23.
//  Copyright © 2016年 朱信磊. All rights reserved.
//

#import "ThreeViewController.h"

@interface ThreeViewController ()

@end

@implementation ThreeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.navigationItem setTitle:@"方法二"];
    [self.view setBackgroundColor:[UIColor lightGrayColor]];
    
    UITextView *tv = [[UITextView alloc]initWithFrame:CGRectMake(80, 80, 200, 200)];
    [tv setBackgroundColor:[UIColor yellowColor]];
    [self.view addSubview:tv];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/**
 *  *iOS中可以直接调用某个对象的消息方式有两种
 
 *1.performSelector:withObject;
 
 *2.NSInvocation
 *
 */
//使用这里的代码也是oK的。 这里利用 NSInvocation 调用 对象的消息
- (void) viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    if([[UIDevice currentDevice]respondsToSelector:@selector(setOrientation:)]) {

        SEL selector = NSSelectorFromString(@"setOrientation:");

        NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:[UIDevice instanceMethodSignatureForSelector:selector]];

        [invocation setSelector:selector];

        [invocation setTarget:[UIDevice currentDevice]];

        int val = UIInterfaceOrientationLandscapeLeft;//横屏

        [invocation setArgument:&val atIndex:2];

        [invocation invoke];

    }
}
//支持的方向
-(UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskLandscapeLeft;
}

//是否可以旋转
-(BOOL)shouldAutorotate
{
    return YES;
}

@end
