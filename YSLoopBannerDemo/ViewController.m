//
//  ViewController.m
//  YSLoopBannerDemo
//
//  Created by zys on 2016/10/18.
//  Copyright © 2016年 张永帅. All rights reserved.
//

#import "ViewController.h"
#import "YSLoopBanner.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    YSLoopBanner *loop = [[YSLoopBanner alloc] initWithFrame:CGRectMake(0, 100, 200, 200) scrollDuration:3.f];
    [self.view addSubview:loop];
    loop.imageURLStrings = @[@"1.jpg", @"2.jpg", @"3.jpg"];
    loop.clickAction = ^(NSInteger index) {
        NSLog(@"curIndex: %ld", index);
    };
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
