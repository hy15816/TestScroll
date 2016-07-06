//
//  LSNavigationController.m
//  TestScroll
//
//  Created by Lost_souls on 16/7/6.
//  Copyright © 2016年 __lost_souls. All rights reserved.
//

#import "LSNavigationController.h"

@interface LSNavigationController ()

@end

@implementation LSNavigationController

- (void)awakeFromNib{

    NSLog(@"LSNavigationController- awakeFromNib");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - UINavigationController

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    
    
    
    [viewController.navigationItem.backBarButtonItem setTitleTextAttributes:@{NSFontAttributeName : [UIFont systemFontOfSize:10]} forState:UIControlStateNormal];
    
    // 有tabbar时 push可以隐藏tabbar
    if (self.childViewControllers.count > 0) {
        viewController.hidesBottomBarWhenPushed = YES;
    }
    
    // 子control 的返回 item
    viewController.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:nil action:nil];
    
    
    [super pushViewController:viewController animated:animated];
}

@end
