//
//  DiscoverViewController.m
//  TestScroll
//
//  Created by Lost_souls on 16/7/6.
//  Copyright © 2016年 __lost_souls. All rights reserved.
//

#import "DiscoverViewController.h"

@interface DiscoverViewController ()

@end

@implementation DiscoverViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    self.tabSeparatorInset = UIEdgeInsetsMake(0, 15, 0, 0);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *_cellid = @"cell_id";
    UITableViewCell *cell = [UITableViewCell cellWithTableView:tableView cid:_cellid];
    cell.textLabel.text = [NSString stringWithFormat:@" cell - %1ld",(long)indexPath.row];
    return cell;

}

@end
