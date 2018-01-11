//
//  ViewController.m
//  Demo
//
//  Created by gz on 2017/9/19.
//  Copyright © 2017年 gz. All rights reserved.
//

#import "ViewController.h"
#import "LZBRecordVideoVC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    [btn setTitle:@"点击" forState:UIControlStateNormal];
    btn.frame = CGRectMake(100, 100, 100, 30);
    [btn addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)click {
    LZBRecordVideoVC *LZBVC = [[LZBRecordVideoVC alloc] init];
    LZBVC.videoBlock = ^(NSString *path) {
        NSLog(@"----->%@", path);
    };
    [self presentViewController:LZBVC animated:YES completion:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
