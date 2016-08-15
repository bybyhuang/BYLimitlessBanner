//
//  BYLimitlessBanner.m
//  BYLimitlessBanner
//
//  Created by huangbaoyu on 16/8/15.
//  Copyright © 2016年 chachong. All rights reserved.
//

#import "BYLimitlessBanner.h"
#import "UIView+Extension.h"
@interface BYLimitlessBanner()<UIScrollViewDelegate>

@property(nonatomic,strong)NSMutableArray *buttonArray;

@property(nonatomic,weak)UIScrollView *scrollView;

@property(nonatomic,strong)NSMutableArray *colorArray;

@property(nonatomic,assign)NSInteger currentIndex;

@end

@implementation BYLimitlessBanner


- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if(self)
    {
        self.buttonArray = [NSMutableArray array];
        [self setupScrollView];
        [self setupButtonArray];
        self.currentIndex = 1;
        
        self.colorArray = [NSMutableArray array];
        [_colorArray addObject:[UIColor redColor]];
        [_colorArray addObject:[UIColor blueColor]];
        [_colorArray addObject:[UIColor yellowColor]];
        [_colorArray addObject:[UIColor greenColor]];
        [_colorArray addObject:[UIColor blackColor]];
        [_colorArray addObject:[UIColor brownColor]];
        
    }
    return self;
}


/**
 *  初始化滚动视图
 */
- (void)setupScrollView
{
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.width, self.height)];
    scrollView.bounces = false;
    scrollView.delegate = self;
    
    scrollView.pagingEnabled = true;
    scrollView.contentSize = CGSizeMake(3*self.width, self.height);
//    scrollView.backgroundColor = [UIColor redColor];
    [scrollView setContentOffset:CGPointMake(self.width, 0)];
    scrollView.showsVerticalScrollIndicator = false;
    scrollView.showsHorizontalScrollIndicator = false;
    [self addSubview:scrollView];
    self.scrollView = scrollView;
}

- (void)setupButtonArray
{
    for (int i = 0; i<3; i++) {
        UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(self.width*i, 0, self.width, self.height)];
        switch (i) {
            case 0:
                button.backgroundColor = [UIColor redColor];
                break;
            case 1:
                button.backgroundColor = [UIColor blueColor];
                break;
            case 2:
                button.backgroundColor = [UIColor yellowColor];
                break;
                
            default:
                break;
        }

        [self.scrollView addSubview:button];
        [self.buttonArray addObject:button];

    }
}


- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    CGFloat num =  scrollView.contentOffset.x / self.width;
  
    //记录下当前的位置
    if (num == 1 ||num == 2 || num == 0)
    {
        //改变图片的位置
        //修改当前的位置
        if (num == 2)
        {
            self.currentIndex = self.currentIndex+1;
            if (self.currentIndex == self.colorArray.count)
            {
                self.currentIndex = 0;
            }
            
        }
        
        if( num == 0)
        {
            self.currentIndex = self.currentIndex - 1;
            if (self.currentIndex < 0)
            {
                self.currentIndex = self.colorArray.count-1;
            }
        }
        //改变图片
        
        [scrollView setContentOffset:CGPointMake(self.width, 0)];
        //

        [self changeButtonPosition];
    }
    
}

/**
 *  修改按钮的位置
 */
- (void)changeButtonPosition
{
    //设置对应的颜色
    for (int i =0; i<self.buttonArray.count; i++) {
        
        UIButton *button = self.buttonArray[i];
        
        
        
        
        NSInteger index = 0;
        switch (i) {
            case 0:
                
                if (_currentIndex == 0)
                {
                    index = self.colorArray.count-1;
                }else
                {
                    index = self.currentIndex-1;
                }
                button.backgroundColor = self.colorArray[index];
                break;
            case 1:
                button.backgroundColor = self.colorArray[self.currentIndex];
                break;
            case 2:
                if (_currentIndex == self.colorArray.count-1)
                {
                    index = 0;
                }else
                {
                    index = _currentIndex +1;
                }
                button.backgroundColor = self.colorArray[index];
                break;
                
            default:
                break;
        }
    }
    

}


@end








