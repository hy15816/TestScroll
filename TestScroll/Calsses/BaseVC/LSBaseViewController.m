//
//  LSBaseViewController.m
//  TestScroll
//
//  Created by Lost_souls on 16/6/29.
//  Copyright © 2016年 __lost_souls. All rights reserved.
//

#import "LSBaseViewController.h"

@interface LSBaseViewController ()

@end

@implementation LSBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setTableViewSeparatorInset:(UIEdgeInsets)inset obj:(id)obj{
    
    if ([obj respondsToSelector:@selector(setSeparatorInset:)]) {
        [obj setSeparatorInset:inset];
    }
    
    if ([obj respondsToSelector:@selector(setLayoutMargins:)]) {
        [obj setLayoutMargins:inset];
    }
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
