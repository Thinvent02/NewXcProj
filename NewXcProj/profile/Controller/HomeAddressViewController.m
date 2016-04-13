//
//  HomeAddressViewController.m
//  XcProject
//
//  Created by xhm on 16/4/11.
//  Copyright © 2016年 xhm. All rights reserved.
//

#import "HomeAddressViewController.h"

@interface HomeAddressViewController ()

@end

@implementation HomeAddressViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title=@"我的家庭住址";
    self.view.backgroundColor=[UIColor redColor];
    UIButton *btn = [[UIButton alloc] init];
    [btn setBackgroundImage:[UIImage imageNamed:@"undo"] forState:UIControlStateNormal];
    [btn setBackgroundImage:[UIImage imageNamed:@"undo"] forState:UIControlStateHighlighted];
    btn.frame = CGRectMake(0, 0, btn.currentBackgroundImage.size.width, btn.currentBackgroundImage.size.width);
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:btn];

    // Do any additional setup after loading the view.
}
-(void)btnClick
{
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (void)didReceiveMemoryWarning
{
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
