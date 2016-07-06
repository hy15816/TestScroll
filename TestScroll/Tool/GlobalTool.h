//
//  GlobalTool.h
//  TestScroll
//
//  Created by Lost_souls on 16/6/29.
//  Copyright © 2016年 __lost_souls. All rights reserved.
//

#define dispatch_main(block) dispatch_async(dispatch_get_main_queue(), block);



#import <UIKit/UIKit.h>

@interface GlobalTool : NSObject



#pragma mark - 显示一个活动指示器
/**
 *  显示一个活动指示器
 *
 *  @param view     显示在哪个view上
 */
+ (void)showActInView:(UIView *)view;
/**
 *  隐藏 act
 *
 *  @param index @see +[showAct:complete]  若全部隐藏index=-1  正常按顺序 第一个是0
 */
+ (void)dismissAct:(NSInteger)index;


@end
