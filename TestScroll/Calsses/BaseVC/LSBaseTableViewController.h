//
//  LSBaseTableViewController.h
//  TestScroll
//
//  Created by Lost_souls on 16/6/29.
//  Copyright © 2016年 __lost_souls. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GlobalTool.h"
#import "NSString+LSAdd.h"
#import "UITableViewCell+LSAdd.h"


@interface LSBaseTableViewController : UITableViewController

/**
 *  分割线的缩进， 默认 UIEdgeInsetsZero
 */
@property (assign,nonatomic) UIEdgeInsets tabSeparatorInset;

/**
 *  模拟网络请求到的文字
 *
 *  @param didLoad 请求成功 YES,默认NO
 *
 *  @return <#return value description#>
 */
- (NSString *)cellText:(BOOL)didLoad;
@end
