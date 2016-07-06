//
//  IndexViewController.m
//  TestScroll
//
//  Created by Lost_souls on 16/6/29.
//  Copyright © 2016年 __lost_souls. All rights reserved.
//

#define kStoryboardMain(vc) [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:vc]

#import "IndexViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"

@interface IndexViewController ()

@property (strong,nonatomic) NSArray *titles;
@end

@implementation IndexViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.titles = @[@"cell中直接显示",@"textView 显示",@"testField"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.titles.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
     
     UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"indexCellID" forIndexPath:indexPath];
     
     cell.textLabel.text = self.titles[indexPath.row];
     return cell;
 
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UIViewController *control = [[FirstViewController alloc] init];
    if (indexPath.row == 1) {
        control = [[SecondViewController alloc] init];
    }else if (indexPath.row == 2){
        control = kStoryboardMain(@"TestFieldViewController");
    }
    if (control) {
        NSLog(@".....%@",[self.navigationController class]);
        [self.navigationController pushViewController:control animated:YES];
    }
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

















@end
