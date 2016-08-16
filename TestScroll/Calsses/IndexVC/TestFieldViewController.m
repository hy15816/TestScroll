//
//  TestFieldViewController.m
//  TestScroll
//
//  Created by Lost_souls on 16/7/4.
//  Copyright © 2016年 __lost_souls. All rights reserved.
//

#import "TestFieldViewController.h"
#import "LSTextField.h"

@interface TestFieldViewController ()<UITableViewDataSource,UITableViewDelegate>


@property (strong, nonatomic) IBOutlet LSTextField *testField;  // default
@property (strong,nonatomic) LSTextField *numberField;          //number
@property (strong,nonatomic) LSTextField *alphabetField;          //alphabet
@property (strong,nonatomic) UITableView *tableView;

@end

@implementation TestFieldViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.testField.placeholder = @"默认field";
    
    [self.view addSubview:self.numberField];
    [self.view addSubview:self.alphabetField];
    
    [self.view addSubview:self.tableView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - 
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1000;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *_cellid = @"cell id";
    UITableViewCell *cell = [UITableViewCell cellWithTableView:tableView cid:_cellid];
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:_cellid];
//    if (cell == nil) {
//        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:_cellid];
//    }
    cell.textLabel.text = [NSString stringWithFormat:@" cell - %1ld",(long)indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath{
    
    [self setTableViewSeparatorInset:UIEdgeInsetsZero obj:cell];
}

#pragma mark - Seeters

- (LSTextField *)numberField {
    
    if (!_numberField) {
        _numberField = [[LSTextField alloc] initWithFrame:CGRectMake(20, 200, self.view.frame.size.width-20*2, 35)];
        _numberField.maxInputLength = 11;
        _numberField.placeholder = @"纯数字field,限制长度11";
        _numberField.textType = LSTextFieldTextTypeNumber;
        _numberField.keyboardType = UIKeyboardTypeNumberPad;
        _alphabetField.borderStyle = UITextBorderStyleRoundedRect;

    }
    
    return _numberField;
}

- (LSTextField *)alphabetField {
    
    if (!_alphabetField) {
        _alphabetField = [[LSTextField alloc] initWithFrame:CGRectMake(20, 250, self.view.frame.size.width-20*2, 35)];
//        _alphabetField.maxInputLength = 20;
//        _alphabetField.placeholder = @"纯字母field,限制长度20";
//        _alphabetField.textType = LSTextFieldTextTypeAlphabet;
        _alphabetField.maxInputLength = 7;
        _alphabetField.placeholder = @"输入金额类型,限制7位数";
        _alphabetField.textType = LSTextFieldTextTypeAmount;
        _alphabetField.keyboardType = UIKeyboardTypeASCIICapable;
        _alphabetField.borderStyle = UITextBorderStyleRoundedRect;
    }
    
    return _alphabetField;
}


- (UITableView *)tableView{
    
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 300, self.view.frame.size.width, 200) style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        
        [self setTableViewSeparatorInset:UIEdgeInsetsZero obj:_tableView];
    }
    
    return _tableView;
}


@end
