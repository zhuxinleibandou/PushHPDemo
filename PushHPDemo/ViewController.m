//
//  ViewController.m
//  PushHPDemo
//
//  Created by 朱信磊 on 16/6/23.
//  Copyright © 2016年 朱信磊. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    TwoViewController *vcTwo;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.view setBackgroundColor:[UIColor whiteColor]];
    vcTwo = [[TwoViewController alloc]init];
    
    UIButton *bt = [[UIButton alloc]initWithFrame:CGRectMake(50, 120, 80, 80)];
    [bt setTitle:@"push1" forState:UIControlStateNormal];
    [bt addTarget:self action:@selector(pushaction) forControlEvents:UIControlEventTouchUpInside];
    [bt setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [bt setBackgroundColor:[UIColor redColor]];
    [self.view addSubview:bt];
    
    UIButton *bt2 = [[UIButton alloc]initWithFrame:CGRectMake(50, 240, 80, 80)];
    [bt2 setTitle:@"push2" forState:UIControlStateNormal];
    [bt2 addTarget:self action:@selector(pushaction2) forControlEvents:UIControlEventTouchUpInside];
    [bt2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [bt2 setBackgroundColor:[UIColor yellowColor]];
    [self.view addSubview:bt2];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)pushaction{
    [self.navigationController pushViewController:vcTwo animated:YES];
}

-(void)pushaction2{
    ThreeViewController *vc = [[ThreeViewController alloc]init];
     [self.navigationController pushViewController:vc animated:YES];
}

//是否可以旋转
- (BOOL)shouldAutorotate
{
    return YES;
}
//支持的方向
-(UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskPortrait;
}


@end
