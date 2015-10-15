//
//  ViewController.m
//  NavigationScrollView
//
//  Created by palance on 15/10/15.
//  Copyright © 2015年 binglen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong, nonatomic) UIView *viewA;
@property (strong, nonatomic) UIView *viewB;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 只有把navigation bar设为不透明，scroll view才能不被它盖住
    self.navigationController.navigationBar.translucent = NO;
    self.scrollView.pagingEnabled = YES;    // 设为翻页模式
    
    // 创建两个子view
    self.viewA = [[UIView alloc]init];
    self.viewA.backgroundColor = [UIColor redColor];
    [self.scrollView addSubview:self.viewA];
    
    self.viewB = [[UIView alloc]init];
    self.viewB.backgroundColor = [UIColor blueColor];
    [self.scrollView addSubview:self.viewB];
}

// 当子视图的尺寸、位置发生变化后，系统会调用此函数。在这里调整contentSize的大小
-(void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    
    CGRect rect = self.scrollView.frame;
    rect.size.width *= 2;
    self.scrollView.contentSize = rect.size;
    
    CGRect rtViewA = self.scrollView.frame;
    rtViewA.origin.x = 0;
    rtViewA.origin.y = 0;
    self.viewA.frame = rtViewA;
    
    CGRect rtViewB = self.scrollView.frame;
    rtViewB.origin.x = rtViewB.size.width;
    rtViewB.origin.y = 0;
    self.viewB.frame = rtViewB;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
