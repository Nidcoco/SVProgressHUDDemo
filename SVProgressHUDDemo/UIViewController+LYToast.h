//
//  UIViewController+LYToast.h
//  SVProgressHUDDemo
//
//  Created by levi on 2019/7/3.
//  Copyright © 2019 levi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SVProgressHUD.h"

NS_ASSUME_NONNULL_BEGIN

typedef void(^__nullable completeAction)(void);

@interface UIViewController (LYToast)

/*
 隐藏hud
 */
- (void)hideLoadingHUD;
/*
 加载中+文字提示（文字可为空）
 */
- (void)showLoadingHUDWithMessage:(nullable NSString *)message;
/*
 纯文字提示
 */
- (void)showTextHUDWithMessage:(nonnull NSString *)message;
/*
 失败提示
 */
- (void)showWarningHUDWithMessage:(nullable NSString *)message completion:(completeAction)completion;
/*
 完成提示
 */
- (void)showCompletionHUDWithMessage:(nullable NSString *)message completion:(completeAction)completion;


@end

NS_ASSUME_NONNULL_END
