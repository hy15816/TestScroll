//
//  TestFieldViewController.m
//  TestScroll
//
//  Created by Lost_souls on 16/7/4.
//  Copyright © 2016年 __lost_souls. All rights reserved.
//

#import "TestFieldViewController.h"
#import "LSTextField.h"

@interface TestFieldViewController ()
@property (strong, nonatomic) IBOutlet LSTextField *testField;  // default
@property (strong,nonatomic) LSTextField *numberField;          //number
@property (strong,nonatomic) LSTextField *alphabetField;          //alphabet


@end

@implementation TestFieldViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.testField.placeholder = @"默认field";
    
    [self.view addSubview:self.numberField];
    [self.view addSubview:self.alphabetField];
    
    
    NSLog(@"MAXFLOAT:%f",MAXFLOAT);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




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
        _alphabetField.maxInputLength = 20;
        _alphabetField.placeholder = @"纯字母field,限制长度20";
        _alphabetField.textType = LSTextFieldTextTypeAlphabet;
        _alphabetField.keyboardType = UIKeyboardTypeASCIICapable;
        _alphabetField.borderStyle = UITextBorderStyleRoundedRect;
    }
    
    return _alphabetField;
}

@end
