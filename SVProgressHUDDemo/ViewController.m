//
//  ViewController.m
//  SVProgressHUDDemo
//
//  Created by 李俊宇 on 2018/10/28.
//  Copyright © 2018年 李俊宇. All rights reserved.
//

#import "ViewController.h"
#import "SVProgressHUD.h"
#import "UIViewController+LYToast.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];

    UIButton *btn1 = [[UIButton alloc]initWithFrame:CGRectMake(20, 100, 60, 30)];
    [btn1 setBackgroundColor:[UIColor grayColor]];
    [btn1 setTitle:@"加载中" forState:UIControlStateNormal];
    [btn1 addTarget:self action:@selector(secondMethod) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn1];
    
    UIButton *btn2 = [[UIButton alloc]initWithFrame:CGRectMake(90, 100, 60, 30)];
    [btn2 setBackgroundColor:[UIColor grayColor]];
    [btn2 setTitle:@"完成" forState:UIControlStateNormal];
    [btn2 addTarget:self action:@selector(threeMethod) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn2];
    
    UIButton *btn3 = [[UIButton alloc]initWithFrame:CGRectMake(160, 100, 60, 30)];
    [btn3 setBackgroundColor:[UIColor grayColor]];
    [btn3 setTitle:@"失败" forState:UIControlStateNormal];
    [btn3 addTarget:self action:@selector(fourMethod) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn3];
    
    UIButton *btn4 = [[UIButton alloc]initWithFrame:CGRectMake(230, 100, 60, 30)];
    [btn4 setBackgroundColor:[UIColor grayColor]];
    [btn4 setTitle:@"进度" forState:UIControlStateNormal];
    [btn4 addTarget:self action:@selector(fiveMethod) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn4];
    
    UIButton *btn5 = [[UIButton alloc]initWithFrame:CGRectMake(300, 100, 60, 30)];
    [btn5 setBackgroundColor:[UIColor grayColor]];
    [btn5 setTitle:@"提醒" forState:UIControlStateNormal];
    [btn5 addTarget:self action:@selector(sixMethod) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn5];

    UIButton *btn6 = [[UIButton alloc]initWithFrame:CGRectMake(20, 140, 60, 30)];
    [btn6 setBackgroundColor:[UIColor grayColor]];
    [btn6 setTitle:@"纯文字" forState:UIControlStateNormal];
    [btn6 addTarget:self action:@selector(sevenMethod) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn6];
    
    UIButton *btn7 = [[UIButton alloc]initWithFrame:CGRectMake(90, 140, 60, 30)];
    [btn7 setBackgroundColor:[UIColor grayColor]];
    [btn7 setTitle:@"封装1" forState:UIControlStateNormal];
    [btn7 addTarget:self action:@selector(eightMethod:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn7];
    
    UIButton *btn8 = [[UIButton alloc]initWithFrame:CGRectMake(160, 140, 60, 30)];
    [btn8 setBackgroundColor:[UIColor grayColor]];
    [btn8 setTitle:@"封装2" forState:UIControlStateNormal];
    [btn8 addTarget:self action:@selector(eightMethod:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn8];
    
    UIButton *btn9 = [[UIButton alloc]initWithFrame:CGRectMake(230, 140, 60, 30)];
    [btn9 setBackgroundColor:[UIColor grayColor]];
    [btn9 setTitle:@"封装3" forState:UIControlStateNormal];
    [btn9 addTarget:self action:@selector(eightMethod:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn9];
    
    UIButton *btn10 = [[UIButton alloc]initWithFrame:CGRectMake(300, 140, 60, 30)];
    [btn10 setBackgroundColor:[UIColor grayColor]];
    [btn10 setTitle:@"封装4" forState:UIControlStateNormal];
    [btn10 addTarget:self action:@selector(eightMethod:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn10];
    
}
- (void)firstMethod
{
    //最简单的显示隐藏
    [SVProgressHUD show];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [SVProgressHUD dismiss];
    });
}
- (void)secondMethod
{
    [SVProgressHUD show];
    //显示加载标题
//    [SVProgressHUD showWithStatus:@"加载中"];
    
    //设置样式
    /*
     SVProgressHUDStyleLight,        // default style, white HUD with black text, HUD background will be blurred
     SVProgressHUDStyleDark,         // black HUD and white text, HUD background will be blurred
     SVProgressHUDStyleCustom        // uses the fore- and background color properties
     */
    //设置HUD的Style
    [SVProgressHUD setDefaultStyle:SVProgressHUDStyleDark];
    
    //设置HUD和文本的颜色
    [SVProgressHUD setForegroundColor:[UIColor greenColor]];
    
    //设置HUD背景颜色
    [SVProgressHUD setBackgroundColor:[UIColor magentaColor]];
    
    //设置提示框的边角弯曲半径
    [SVProgressHUD setCornerRadius:5];
    /**
     *  设置HUD背景图层的样式
     *
     *  SVProgressHUDMaskTypeNone：默认图层样式，当HUD显示的时候，允许用户交互。
     *
     *  SVProgressHUDMaskTypeClear：当HUD显示的时候，不允许用户交互。
     *
     *  SVProgressHUDMaskTypeBlack：当HUD显示的时候，不允许用户交互，且显示黑色背景图层。
     *
     *  SVProgressHUDMaskTypeGradient：当HUD显示的时候，不允许用户交互，且显示渐变的背景图层。
     *
     *  SVProgressHUDMaskTypeCustom：当HUD显示的时候，不允许用户交互，且显示背景图层自定义的颜色。
     */
    
    //显示提示框的时候，一般不允许用户交互，就是做其他操作，如点击其他按钮,因为默认就是允许交互，所以这个一定要设置下，以下的方法我就不一一设置了
    [SVProgressHUD setDefaultMaskType:SVProgressHUDMaskTypeCustom];
    
    /*
     SVProgressHUDAnimationTypeFlat,     // default animation type, custom flat animation (indefinite animated ring)
     SVProgressHUDAnimationTypeNative    // iOS native UIActivityIndicatorView
     */
    //动画效果
    [SVProgressHUD setDefaultAnimationType:SVProgressHUDAnimationTypeFlat];
    
    
    //设置多少秒后隐藏
    [SVProgressHUD dismissWithDelay:1.0];
}
- (void)threeMethod
{
    //加载成功动画
    [SVProgressHUD showSuccessWithStatus:@"下载完成"];
    [SVProgressHUD dismissWithDelay:1.0];
}
- (void)fourMethod
{
    [SVProgressHUD showErrorWithStatus:@"下载失败"];
    [SVProgressHUD dismissWithDelay:1.0];
}
- (void)fiveMethod
{
    [SVProgressHUD showProgress:0.1];
    [SVProgressHUD dismissWithDelay:1.0];
}

- (void)sixMethod
{
    [SVProgressHUD showInfoWithStatus:@"请输入"];
    [SVProgressHUD dismissWithDelay:1.0];
}

- (void)sevenMethod
{
    //自定义图片
    [SVProgressHUD showImage:[UIImage imageNamed:@""] status:@"提示纯文字"];
    [SVProgressHUD dismissWithDelay:1.0];
}

- (void)eightMethod:(UIButton *)btn
{
    if ([btn.titleLabel.text isEqualToString:@"封装1"]) {
        [self showLoadingHUDWithMessage:nil];
    }else if ([btn.titleLabel.text isEqualToString:@"封装2"]) {
        [self showTextHUDWithMessage:@"纯文字"];
    }else if ([btn.titleLabel.text isEqualToString:@"封装3"]) {
        [self showWarningHUDWithMessage:nil completion:nil];
    }else if ([btn.titleLabel.text isEqualToString:@"封装4"]) {
        [self showCompletionHUDWithMessage:@"请求成功" completion:^{
            NSLog(@"成功后的回调");
        }];
    }
    
}

@end
