//
//  ViewController.m
//  SVProgressHUDDemo
//
//  Created by 李俊宇 on 2018/10/28.
//  Copyright © 2018年 李俊宇. All rights reserved.
//

#import "ViewController.h"
#import "SVProgressHUD.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
//    [self first];
     //[self second];
    //[self threeMethod];
//   [self fourMethod];
    //[self fiveMethod];
    
    [self sd];
}
- (void)first
{
    //最简单的显示隐藏
    [SVProgressHUD show];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [SVProgressHUD dismiss];
    });
}
- (void)second
{
    //显示加载标题
    [SVProgressHUD showWithStatus:@"加载中"];
    //设置样式
    /*
     SVProgressHUDStyleLight,        // default style, white HUD with black text, HUD background will be blurred
     SVProgressHUDStyleDark,         // black HUD and white text, HUD background will be blurred
     SVProgressHUDStyleCustom        // uses the fore- and background color properties
     */
    //设置HUD的Style
    [SVProgressHUD setDefaultStyle:(SVProgressHUDStyleDark)];
    //设置HUD和文本的颜色
    [SVProgressHUD setForegroundColor:[UIColor greenColor]];
    //设置HUD背景颜色
    [SVProgressHUD setBackgroundColor:[UIColor magentaColor]];
    
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
    [SVProgressHUD setDefaultMaskType:SVProgressHUDMaskTypeCustom];
    /*
     SVProgressHUDAnimationTypeFlat,     // default animation type, custom flat animation (indefinite animated ring)
     SVProgressHUDAnimationTypeNative    // iOS native UIActivityIndicatorView
     */
    //动画效果
    [SVProgressHUD setDefaultAnimationType:(SVProgressHUDAnimationTypeFlat)];
    
    
    //设置多少秒后隐藏
    [SVProgressHUD dismissWithDelay:60.0];
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
    
}

- (void)sd
{
    [SVProgressHUD showInfoWithStatus:@"请输入"];
    
}


@end
