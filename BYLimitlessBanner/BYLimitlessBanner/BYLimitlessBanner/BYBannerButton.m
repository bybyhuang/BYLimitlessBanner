//
//  BYBannerButton.m
//  BYLimitlessBanner
//
//  Created by huangbaoyu on 16/8/15.
//  Copyright © 2016年 chachong. All rights reserved.
//

#import "BYBannerButton.h"
#import <UIImageView+WebCache.h>

@interface BYBannerButton()

@property(nonatomic,weak)UIImageView *bannerImage;

@end

@implementation BYBannerButton

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        UIImageView *imageView =  [[UIImageView alloc] initWithFrame:self.bounds];
        imageView.image = [UIImage imageNamed:@"3"];
        imageView.layer.masksToBounds = true;
        [self addSubview:imageView];
        self.bannerImage = imageView;
    }
    return self;
  
}


/**
 *  通过图片地址配置按钮
 */
- (void)configButtonWithUrl:(NSString *)url
{
    [self.bannerImage sd_setImageWithURL:[NSURL URLWithString:url] placeholderImage:[UIImage imageNamed:@"default_img"]];
}

/**
 *  通过普通的图片来设置
 */
- (void)configButtonWithImage:(UIImage *)image
{
    self.bannerImage.image = image;
}

- (void)configButtonWithObject:(id)object
{
    if([object isKindOfClass:[NSString class]])
    {
        NSString *url = (NSString *)object;
        [self configButtonWithUrl:url];
    }else
    {
        UIImage *image = (UIImage *)object;
        [self configButtonWithImage:image];
    }
}

@end
