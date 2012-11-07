//
//  WFCityListViewController.m
//  WolfShow
//
//  Created by huguiqi on 12-11-5.
//  Copyright (c) 2012年 huguiqi. All rights reserved.
//

#import "WFCityListViewController.h"

@interface WFCityListViewController ()

@end

@implementation WFCityListViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    NSArray *listData = [[NSArray alloc] initWithObjects:@"上海",@"北京",@"深圳",@"长沙",@"昆明",@"厦门",@"南京", nil];
    self.cityList=listData;
    
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.cityList count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
        static NSString *simpleIdentityStr = @"default value";
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleIdentityStr ];

    if(cell == nil){
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleIdentityStr];
    }
    NSInteger row = [indexPath row];
    cell.textLabel.text = [self.cityList objectAtIndex:row];
    return cell;
}






-(void)viewDidUnload
{
    cityList = nil;
    [super viewDidUnload];
}

-(void)dealloc:(id)send
{
    [cityList release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
