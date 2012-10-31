//
//  WFLoginViewViewController.h
//  WolfShow
//
//  Created by huguiqi on 12-10-28.
//  Copyright (c) 2012年 huguiqi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WFLoginViewViewController : UIViewController

@property(nonatomic,retain) IBOutlet UITextField *userNameField;

@property(nonatomic,retain) IBOutlet UITextField *passwordFiled;

-(IBAction)clickSomething:(id)sender;

-(IBAction)textFieldDoneEditing:(id)sender;

-(IBAction)backgroupTap:(id)sender;

@end
