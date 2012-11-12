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

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];

    NSArray *listData = [[NSArray alloc] initWithObjects:@"上海", @"北京", @"深圳", @"长沙", @"昆明", @"厦门", @"南京", nil];
    self.cityList = listData;
    [listData release];

    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

#pragma --mark tableView-numberOfRowsInSection
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.cityList count];
}


#pragma --mark tableView-cellOperate
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *simpleIdentityStr = @"default value";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleIdentityStr];

    if (cell == nil) {
//            cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleIdentityStr] autorelease];
        //前两行是title，后面的是详细内容,value1 没有变，但有样式,value2，也是有样式，
//        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:simpleIdentityStr];
//        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue2 reuseIdentifier:simpleIdentityStr];
        //这个是不带样式的title ->subTitle模式
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:simpleIdentityStr];
    }
    //添加的图片默认会在cell左边
    cell.imageView.image = [UIImage imageNamed:@"head_50.png"];
//    cell.textLabel.font = [UIFont italicSystemFontOfSize:24.0];这样设置字体是可以生效的,但是其它的属性如:textColor,backGroup等属性是不能生效的，要想设置这些属性，则需要instance一个label去设置
    NSInteger row = [indexPath row];
    cell.textLabel.text = [self.cityList objectAtIndex:row];

    if (row < 2) {
        CGRect rect = CGRectMake(190.0,5.0,60.0,25.0);
        UILabel *nameLabel = [[UILabel alloc] initWithFrame:rect];
//        nameLabel.textColor = [[UIColor alloc] initWithHue:0.345 saturation:0.6 brightness:0.6 alpha:1];
        nameLabel.textColor = [[UIColor alloc] initWithRed:184 green:0 blue:46 alpha:1];
        nameLabel.text = @"xxxxxx";
        nameLabel.font = [[UIFont alloc] fontWithSize:14];

        [cell.contentView addSubview:nameLabel];
        cell.textLabel.text = @"hello,world";
    } else {
        cell.textLabel.text = @"big bow";
    }
    return cell;
}

#pragma --mark tableViewDelegate-indentationLevelForRowAtIndexPath,操作行缩进
- (NSInteger)tableView:(UITableView *)tableView indentationLevelForRowAtIndexPath:(NSIndexPath *)indexPath {
//这行代码是用以取行数
//    NSInteger *row = [indexPath row];
    //每行缩进4个字符
    return 4;
}

#pragma --mark tableViewDelegate-willSelectRowAtIndexPath,选中行之前需要调用的方法
- (NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath {

    NSInteger row = [indexPath row];
    if (row == 0) {
        UIAlertView *alertView = [[UIAlertView alloc]
                initWithTitle:@"one row"
                      message:@"不让选第一行"
                     delegate:nil cancelButtonTitle:@"yes,i did"
            otherButtonTitles:nil];//此处有问题，不知道为啥,加了这个实现方法后就闪退
        [alertView show];
        [alertView release];
        return nil;
    }
    return nil;
}

#pragma --mark tableViewDelegate-didSelectRowAtIndexPath,选中行时对应的事件方法
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

    [tableView deselectRowAtIndexPath:indexPath animated:YES];

}

#pragma --mark tableViewDelegate-heightForRowAtIndexPath,设置行高，还有其它的实现方法，就不列举了
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 35;
}


- (void)viewDidUnload {
    self.cityList = nil;
    [super viewDidUnload];
}

- (void)dealloc:(id)send {
    self.cityList = nil;
    [super dealloc];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
