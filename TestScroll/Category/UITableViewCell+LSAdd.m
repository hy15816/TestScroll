//
//  UITableViewCell+LSAdd.m
//  TestScroll
//
//  Created by Lost_souls on 16/7/6.
//  Copyright © 2016年 __lost_souls. All rights reserved.
//

#import "UITableViewCell+LSAdd.h"

@implementation UITableViewCell (LSAdd)

+ (UITableViewCell *)cellWithTableView:(UITableView *)tableView cid:(NSString *)cellID{
    
//    NSLog(@"classString:%@",[tableView class]);
//    NSString *_cid = [NSString stringWithFormat:@"%@_cellid",[tableView class]];
//    static NSString *cellid = @"tableviewCellID";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    
    return cell;
}
@end
