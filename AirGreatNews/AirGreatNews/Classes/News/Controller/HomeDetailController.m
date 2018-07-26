//
//  HomeDetailController.m
//  Qihuo
//
//  Created by   on 2018/3/1.
//  Copyright © 2018年 com.qihuo. All rights reserved.
//

#import "HomeDetailController.h"
#import "UIView+Extension.h"
#import "UIImageView+WebCache.h"

#define HBRGB(r,g,b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0]
#define ImagePath(path) [@"Resources.bundle" stringByAppendingPathComponent:path]

@interface HomeDetailController ()

@end

@implementation HomeDetailController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];

    self.title = @"资讯详情";
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:scrollView];
    
    UILabel *title = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, self.view.width - 20, 30)];
    title.numberOfLines = 0;
    title.text = self.topTitle;
    title.font = [UIFont systemFontOfSize:18];
    title.numberOfLines = 0;
    [scrollView addSubview:title];
    
    UILabel *time = [[UILabel alloc] initWithFrame:CGRectMake(10, CGRectGetMaxY(title.frame) + 10, self.view.width - 20, 30)];
    time.textColor = HBRGB(153, 153, 153);
    time.numberOfLines = 0;
    time.text = self.time;
    [time sizeToFit];
    time.font = [UIFont systemFontOfSize:14];
    time.numberOfLines = 0;
    [scrollView addSubview:time];

    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(10, CGRectGetMaxY(time.frame) + 10, self.view.width - 20, 250)];
    [imageView sd_setImageWithURL:[NSURL URLWithString:self.imageName]];
    [scrollView addSubview:imageView];

    UILabel *desc = [[UILabel alloc] initWithFrame:CGRectMake(10, 0, self.view.width - 20, 0)];
    desc.numberOfLines = 0;
    desc.text = self.desc;
    desc.font = [UIFont systemFontOfSize:14];
    [desc sizeToFit];
    desc.y = CGRectGetMaxY(imageView.frame) + 10;
    [scrollView addSubview:desc];
    
    scrollView.contentSize = CGSizeMake(0, CGRectGetMaxY(desc.frame) + 74);
}


@end
