//
//  WAPViewController.m
//  XcProject
//
//  Created by xhm on 16/4/13.
//  Copyright © 2016年 xhm. All rights reserved.
//

#import "WAPViewController.h"

@interface WAPViewController ()<UITextFieldDelegate,UITextViewDelegate>
{
    UIButton*_rightNavbtn;
}
@property(nonatomic,weak)  UITextView  *txtFeedback;
@property(nonatomic,weak)  UILabel  *lbPlaceHolder;
@property(nonatomic,weak)  UIButton  *btnSend;
@property(nonatomic,strong)  UITextField *txtField;
@end

@implementation WAPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title=@"意见反馈";
    _rightNavbtn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    [_rightNavbtn setTitle:@"发送" forState:UIControlStateNormal];
    
    [_rightNavbtn setTitleColor:UIColorFromRGB(0x333333, 1) forState:UIControlStateNormal];
    [_rightNavbtn setTitleColor:UIColorFromRGB(0x333333, 1) forState:UIControlStateSelected];
    [_rightNavbtn.titleLabel setFont:[UIFont systemFontOfSize:15]];
    
    _rightNavbtn.frame = CGRectMake(0, 0, 40, 40);
    
    _rightNavbtn.titleEdgeInsets = UIEdgeInsetsMake(0, 8, 0, 0);
    
    [_rightNavbtn addTarget:self action:@selector(navBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *backBarItem = [[UIBarButtonItem alloc] initWithCustomView:_rightNavbtn];
    
    backBarItem.title = @"";
    
    self.navigationItem.rightBarButtonItem = backBarItem;
    [self creatTextView];
    // Do any additional setup after loading the view.
}
- (void)creatTextView
{
    
    
    UIView *bgView = [[UIView alloc] init];
    bgView.frame = CGRectMake(0, 64, self.view.bounds.size.width, 107);
    bgView.backgroundColor =[UIColor whiteColor];
    [self.view addSubview:bgView];
    
    //    CGRect txtF = CGRectMake(15, 0, self.view.bounds.size.width-30, bgView.bounds.size.height);
    UIView *line = [[UIView alloc] init];
    line.backgroundColor = KSeparatorLineColor;
    line.frame = CGRectMake(0, 106.5f, self.view.bounds.size.width, 0.5f);
    [bgView addSubview:line];
    
    UITextView  *txtFeedback =[[UITextView alloc] init];
    
    txtFeedback.delegate = self;
    txtFeedback.frame = CGRectMake(10, 10, self.view.bounds.size.width-20, bgView.bounds.size.height -20);
    //    txtFeedback.
    txtFeedback.font = [UIFont systemFontOfSize:14];
    
    self.txtFeedback = txtFeedback;
    [bgView addSubview:txtFeedback];
    //    txtFeedback set
    
    UILabel *placelabel=   [[UILabel alloc] init];
    placelabel.font = [UIFont systemFontOfSize:14];
    placelabel.textColor = [UIColor lightGrayColor];
    placelabel.text = @"请输入你要反馈的问题...";
    placelabel.frame = CGRectMake(5, 0, txtFeedback.bounds.size.width, 30);
    
    self.lbPlaceHolder = placelabel;
    [txtFeedback addSubview:placelabel];
    
    //    [self.txtFeedback becomeFirstResponder];
    
    
    UIView *phoneView = [[UIView alloc] init];
    phoneView.frame = CGRectMake(0, bgView.y+bgView.height + 15, WIDTH, 45);
    phoneView.backgroundColor = [UIColor whiteColor];
    phoneView.layer.borderWidth = KSeparatorLineHeight;
    phoneView.layer.borderColor = KSeparatorLineColor.CGColor;
    [self.view addSubview:phoneView];
    
    
    UILabel *label = [[UILabel alloc] init];
    label.frame = CGRectMake(15, 0, 130/2, 45);
    label.font = [UIFont systemFontOfSize:16];
    label.textColor = UIColorFromRGB(0x333333, 1);
    label.text = @"联系方式";
    [phoneView addSubview:label];
    
    self.txtField = [[UITextField alloc] init];
    self.txtField.placeholder = @"留下电话方便客服联系你";
    self.txtField.frame = CGRectMake(label.x+label.width + 15, 0, WIDTH - 30 - 130/2 - 15, 45);
    self.txtField.delegate = self;
    self.txtField.font = [UIFont systemFontOfSize:14];
    //    self.txtField.clearsOnBeginEditing = YES;
    self.txtField.clearButtonMode = UITextFieldViewModeWhileEditing;
    //    self.txtField.text = [MobileData sharedInstance].custPhone;
    //    self.isPhone = YES;
    self.txtField.keyboardType = UIKeyboardTypeNumberPad;
    [phoneView addSubview:self.txtField];
    
}

-(void)navBtnClick:(UIButton*)btn
{
    
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
