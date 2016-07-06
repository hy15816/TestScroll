//
//  FirstViewController.m
//  TestScroll
//
//  Created by Lost_souls on 16/6/29.
//  Copyright © 2016年 __lost_souls. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()
{
    BOOL _didAppear;
}
@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.tabSeparatorInset = UIEdgeInsetsMake(0, 15, 0, 0);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        _didAppear = YES;
        NSIndexPath *path = [NSIndexPath indexPathForRow:0 inSection:1];
        [self.tableView reloadRowsAtIndexPaths:@[path] withRowAnimation:UITableViewRowAnimationAutomatic];
    });
    
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    if (section == 1) {
        return 1;
    }
    
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (indexPath.section == 0 || indexPath.section == 2) {
        static NSString *cellIden = @"agreementCells1";
        UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:cellIden];
        if (!cell) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIden];
        }
        
        cell.textLabel.text = [NSString stringWithFormat:@"---------%ld",(long)indexPath.row];
        return cell;
    }else if (indexPath.section ==1){
        
        static NSString *cellIden = @"agreementCells2";
        UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:cellIden];
        if (!cell) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIden];
            cell.textLabel.font = [UIFont systemFontOfSize:16];
            cell.textLabel.numberOfLines = 0;
            
        }
        cell.textLabel.text = [self cellText:_didAppear];
        if (!_didAppear) {
            [GlobalTool showActInView:cell.contentView];
        }else{
            [GlobalTool dismissAct:-1];
        }
        
        return cell;
    }
    
    
    return nil;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (indexPath.section == 1) {
        return !_didAppear? 50.f : [[self cellText:_didAppear] sizeForFont:[UIFont systemFontOfSize:16] size:CGSizeMake(self.view.frame.size.width - 20 *2, CGFLOAT_MAX) mode:NSLineBreakByWordWrapping].height;
    }
    
    return 50.f;
}











@end
