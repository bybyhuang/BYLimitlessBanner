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
    
    
    NSMutableArray *imageArray = [NSMutableArray array];
    [imageArray addObject:@"http://h.hiphotos.baidu.com/zhidao/wh%3D450%2C600/sign=3dc4538262d0f703e6e79dd83dca7d0b/7a899e510fb30f24f570e996c895d143ac4b03b8.jpg"];
    [imageArray addObject:@"http://img0.imgtn.bdimg.com/it/u=2389323131,1530511915&fm=206&gp=0.jpg"];
    [imageArray addObject:@"http://img5.imgtn.bdimg.com/it/u=612837957,2595792188&fm=206&gp=0.jpg"];
    
    [banner configImageArrayWith:imageArray];
    
    [self.view addSubview:banner];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
