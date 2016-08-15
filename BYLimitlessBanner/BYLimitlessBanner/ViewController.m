//
//  ViewController.m
//  BYLimitlessBanner
//
//  Created by huangbaoyu on 16/8/15.
//  Copyright © 2016年 chachong. All rights reserved.
//

#import "ViewController.h"
#import "BYLimitlessBanner.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    BYLimitlessBanner *banner = [[BYLimitlessBanner alloc] initWithFrame:CGRectMake(20, 100, [UIScreen mainScreen].bounds.size.width-40, 200)];
    
    [self.view addSubview:banner];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
