//
//  WFLoginViewViewController.m
//  WolfShow
//
//  Created by huguiqi on 12-10-28.
//  Copyright (c) 2012年 huguiqi. All rights reserved.
//

#import "WFLoginViewViewController.h"

@interface WFLoginViewViewController ()

@end

@implementation WFLoginViewViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@synthesize userNameField;
@synthesize passwordFiled;

-(IBAction)clickSomething:(id)sender{
    
    NSString *userName = [userNameField text];
    NSString *password = [passwordFiled text];
    NSLog(@"the userName is %@,and password is %@",userName,password);
    
    [userName dealloc];
    [password dealloc];
}


@end
