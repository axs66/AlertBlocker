#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

%ctor {
    [[NSNotificationCenter defaultCenter] addObserverForName:UIWindowDidBecomeVisibleNotification
                                                      object:nil
                                                       queue:[NSOperationQueue mainQueue]
                                                  usingBlock:^(NSNotification *note) {
        UIWindow *window = note.object;
        CGFloat level = window.windowLevel;

        // 判断 window 层级是否属于弹窗范畴
        if (level >= UIWindowLevelAlert && level <= UIWindowLevelStatusBar + 10) {

            // 延迟处理，防止视图尚未完全加载
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.3 * NSEC_PER_SEC)),
                           dispatch_get_main_queue(), ^{

                BOOL shouldHide = NO;

                for (UIView *subview in window.subviews) {
                    NSString *className = NSStringFromClass([subview class]);
                    NSString *desc = subview.description;

                    // 关键字判断：类名或描述中含“登录”或“弹窗”等
                    if ([desc containsString:@"登录"] ||
                        [className containsString:@"Popup"] ||
                        [className containsString:@"Alert"]) {

                        NSLog(@"✅ AlertBlocker: 检测到疑似登录弹窗，准备隐藏 -> %@", className);
                        shouldHide = YES;
                        break;
                    }
                }

                if (shouldHide) {
                    window.hidden = YES;
                }
            });
        }
    }];
}
