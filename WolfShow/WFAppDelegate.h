//
//  WFAppDelegate.h
//  WolfShow
//
//  Created by huguiqi on 12-10-28.
//  Copyright (c) 2012年 huguiqi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WFLoginViewViewController.h"

@interface WFAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) WFLoginViewViewController *loginViewController;

@end

