//
//  NativeViewController.m
//  ReactNativeJumpToNativePage
//
//  Created by wenzhan on 2018/8/22.
//  Copyright © 2018年 Facebook. All rights reserved.
//

#import "NativeViewController.h"

@interface NativeViewController ()

@end

@implementation NativeViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view.
  self.navigationItem.title = @"我是原生页面哟~";
  self.view.backgroundColor = [UIColor whiteColor];
  
  UIImage *oneImage = [UIImage imageNamed:@"screenshot.png"]; // 使用ImageView通过name找到图片
  UIImageView *oneImageView = [[UIImageView alloc] initWithImage:oneImage]; //把oneImage添加到oneImageView上
  oneImageView.frame = CGRectMake(0, 200, self.view.frame.size.width, 240); // 设置图片位置和大小
  oneImageView.backgroundColor = [UIColor redColor]; // 设置背景颜色
  oneImageView.alpha = 1.0; // 设置透明度
  [self.view addSubview:oneImageView];
  
  
}

- (void)viewWillAppear:(BOOL)animated {
  [super viewWillAppear:animated];
  self.navigationController.navigationBar.hidden = NO;
}

- (void)viewWillDisappear:(BOOL)animated {
  [super viewWillDisappear:animated];
  self.navigationController.navigationBar.hidden = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
