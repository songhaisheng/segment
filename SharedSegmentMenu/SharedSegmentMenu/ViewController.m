//
//  ViewController.m
//  SharedSegmentMenu
//
//  Created by lanouhn on 16/4/26.
//  Copyright © 2016年 lanouhn. All rights reserved.
//

#import "ViewController.h"
#import "WJSegmentMenuVc.h"
#import "FirstViewController.h"
#import "SecondTableViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    FirstViewController *firVC = [[FirstViewController alloc] init];
    SecondTableViewController *secVC = [[SecondTableViewController alloc] init];
    
    self.view.backgroundColor = [UIColor redColor];
    WJSegmentMenuVc *segmentVC = [[WJSegmentMenuVc alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 50)];
    [self.view addSubview:segmentVC];
    [segmentVC addSubVc:@[firVC, secVC] subTitles:@[@"hehe", @"haha"]];
    
    // 滑块颜色
    segmentVC.SlideColor = [UIColor orangeColor];
    // 选中的字体颜色
    segmentVC.selectedColor = [UIColor greenColor];
    
    
    NSLog(@"哈哈哈哈哈");
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
