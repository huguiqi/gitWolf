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
    
    UISwipeGestureRecognizer *tapGR = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleTap:)];
    tapGR.direction = UISwipeGestureRecognizerDirectionRight;
    //    tapGR.delegate = self;
    [self.cityListView addGestureRecognizer:tapGR];
    [tapGR release];
    
    WFCityListViewController *cityListController=[[[WFCityListViewController alloc] initWithNibName:@"WFCityListViewController" bundle:nil] autorelease];
    [self.cityListView addSubview:[cityListController view]];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@synthesize userNameField;
@synthesize passwordFiled;
@synthesize ageFiled;
@synthesize switchON;
@synthesize switchOFF;
@synthesize buttonOK;

-(IBAction)clickSomething:(id)sender{
    
    NSString *userName = [userNameField text];
    NSString *password = [passwordFiled text];
    NSLog(@"the userName is %@,and password is %@",userName,password);    
}


-(IBAction)textFieldDoneEditing:(id)sender{
    [sender resignFirstResponder];
}


-(IBAction)backgroupTap:(id)sender{
    //在非第一响应者的控件上调用第一响应者方法是绝对安全的
    [userNameField resignFirstResponder];
    [passwordFiled resignFirstResponder];
}

-(IBAction)slideAgeChange:(id)sender{
    //将响应者对象赋给定义的变量值
    UISlider *slider = (UISlider *) sender;
    int ageSender = (int)[slider value];
    int age = ageSender+ 1;
    if(age >100){
        age = 100;
    }
    NSString *newText = [[NSString alloc] initWithFormat:@"%d",age];
    ageFiled.text = newText;
    [newText release];
}

-(IBAction)turnSwitchEvent:(id)sender{
    
    [self.navigationController popToViewController:self animated:YES];

    
}

-(IBAction)toggleController:(id)sender{
    if([sender selectedSegmentIndex] ==0){
        switchON.hidden=NO;
        switchOFF.hidden=YES;
        buttonOK.hidden=NO;
    }else{
        switchON.hidden=YES;
        switchOFF.hidden=NO;
        buttonOK.hidden=YES;
    }
    
}


-(IBAction)showCityListView: (id)sender {
    [UIView beginAnimations:@"showCityList" context:nil];
    [UIView setAnimationRepeatCount:1];
    [UIView setAnimationDuration:0.3];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseIn];
    self.cityListView.frame = CGRectMake(35, 0.0, 285.0, 460.0);
    [UIView commitAnimations];
}

- (void) handleTap:(UISwipeGestureRecognizer*)swipeRecognizer{
    [UIView beginAnimations:@"showCityList" context:nil];
    [UIView setAnimationRepeatCount:1];
    [UIView setAnimationDuration:0.3];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseIn];
    self.cityListView.frame = CGRectMake(320.0, 0.0, 285.0, 460.0);
    [UIView commitAnimations];
}


//- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
//    CGPoint pt = [[touches anyObject] locationInView:self.cityListView];
//    startLocation = pt;
//    [[self.cityListView superview] bringSubviewToFront:self.cityListView];
//}
//
//- (void) touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
//{
//    [UIView beginAnimations:@"showPromotion" context:nil];
//    [UIView setAnimationRepeatCount:1];
//    [UIView setAnimationDuration:0.3];
//    [UIView setAnimationCurve:UIViewAnimationCurveEaseIn];
//    self.cityListView.frame = CGRectMake(320, 0.0, 285.0, 460.0);
//    [UIView commitAnimations];
//    
//}

- (void)dealloc
{
    [userNameField release ];
    [passwordFiled release ];
    [ageFiled release];
    [switchON release];
    [switchOFF release];
    [buttonOK release];
    [super dealloc];
}


@end
