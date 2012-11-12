//
//  WFCityListViewController.h
//  WolfShow
//
//  Created by huguiqi on 12-11-5.
//  Copyright (c) 2012年 huguiqi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WFCityListViewController : UIViewController <UITableViewDelegate,UITableViewDataSource>

@property(nonatomic,retain) NSArray *cityList;

@end
