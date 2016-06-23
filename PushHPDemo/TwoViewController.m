//
//  TwoViewController.m
//  PushHPDemo
//
//  Created by 朱信磊 on 16/6/23.
//  Copyright © 2016年 朱信磊. All rights reserved.
//

#import "TwoViewController.h"
#import "AppDelegate.h"
@interface TwoViewController ()

@end

@implementation TwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.navigationItem setTitle:@"方法一"];
    [self.view setBackgroundColor:[UIColor lightGrayColor]];
//    [self.navigationController pushViewController:[[ThreeViewController alloc]init] animated:YES];

    UITextView *tv = [[UITextView alloc]initWithFrame:CGRectMake(80, 80, 200, 200)];
    [tv setBackgroundColor:[UIColor yellowColor]];
    [self.view addSubview:tv];
//    [self performSelector:@selector(aa) withObject:UITextViewTextDidBeginEditingNotification afterDelay:1];
    
}



-(void)viewWillAppear:(BOOL)animated{
    NSNumber *orientationUnknown = [NSNumber numberWithInt:UIInterfaceOrientationUnknown];
    [[UIDevice currentDevice] setValue:orientationUnknown forKey:@"orientation"];
    
    NSNumber *orientationTarget = [NSNumber numberWithInt:UIInterfaceOrientationLandscapeLeft];
    [[UIDevice currentDevice] setValue:orientationTarget forKey:@"orientation"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
