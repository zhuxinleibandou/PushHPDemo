//
//  AppDelegate.h
//  PushHPDemo
//
//  Created by 朱信磊 on 16/6/23.
//  Copyright © 2016年 朱信磊. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CusNavViewController.h"
@interface AppDelegate : UIResponder <UIApplicationDelegate>
@property (strong, nonatomic) CusNavViewController *rootNav;
@property (strong, nonatomic) UIWindow *window;
@property (assign, nonatomic) NSInteger allowRotation;

@end

