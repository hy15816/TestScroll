//
//  LSTextField.m
//  TestScroll
//
//  Created by Lost_souls on 16/7/4.
//  Copyright © 2016年 __lost_souls. All rights reserved.
//

/***************************************************************
 @name 限制输入
 ***************************************************************/
// 字母数字
#define LSAlphanumeric @"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
// 字母
#define LSAlphabet @"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
// 数字
#define LSNumber @"0123456789"




#import "LSTextField.h"


@implementation LSTextField


- (instancetype)init{
    
    self = [super init];
    if (self) {
//        [self initBase];
    }
    
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) {
        [self initBase];
    }
    
    return self;
}

- (void)awakeFromNib{
    
    NSLog(@"---------LSTextField      awakeFromNib------------");
    [self initBase];
}

- (void)initBase {
    
    self.popKeyboard = YES;
    self.maxInputLength = MAXFLOAT;
    self.textType = LSTextFieldTextTypeDefault;
    self.delegate = self;
    [self addTarget:self action:@selector(lsTextFieldDidChange:) forControlEvents:UIControlEventEditingChanged];
}

#pragma mark -

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    
    return self.popKeyboard;
}

//- (void)textFieldDidBeginEditing:(UITextField *)textField{
//    
//    
//}           // became first responder
//- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
//    
//}          // return YES to allow editing to stop and to resign first responder status. NO to disallow the editing session to end
- (void)textFieldDidEndEditing:(UITextField *)textField{

    
}             // may be called if forced even if shouldEndEditing returns NO (e.g. view removed from window) or endEditing:YES called

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    
    // 限制输入长度
    if (string.length == 0) return YES;
    NSInteger existedLength = textField.text.length;
    NSInteger selectedLength = range.length;
    NSInteger replaceLength = string.length;
    if (existedLength - selectedLength + replaceLength > self.maxInputLength) {
        return NO;
    }
    
    return [self limitInputTypeWithString:string];
}




//- (BOOL)textFieldShouldClear:(UITextField *)textField{
//    
//}               // called when clear button pressed. return NO to ignore (no notifications)
//- (BOOL)textFieldShouldReturn:(UITextField *)textField{
//    
//}              // called when 'return' key pressed. return NO to ignore.

#pragma mark - private 

- (BOOL)limitInputTypeWithString:(NSString *)string{
    
    NSString *charactersInString = nil;
    switch (self.textType) {
        case LSTextFieldTextTypeNumber:
            charactersInString = LSNumber;
            break;
        case LSTextFieldTextTypeAlphabet:
            charactersInString = LSAlphabet;
            break;
        case LSTextFieldTextTypeAlphanumeric:
            charactersInString = LSAlphanumeric;
            break;
            
        default:
            break;
    }
    if (charactersInString == nil) {
        return YES;
    }else{
        NSCharacterSet *ls = [[NSCharacterSet characterSetWithCharactersInString:charactersInString] invertedSet];
        NSString *filtered = [[string componentsSeparatedByCharactersInSet:ls] componentsJoinedByString:@""]; ////按ls分离出数组,数组按@""分离出字符串
        return [string isEqualToString:filtered];
    }
    
    return YES;
}


#pragma mark -  textFieldDidChanged

- (void)lsTextFieldDidChange:(UITextField *)textField {

    if (textField.text.length > self.maxInputLength) {
        textField.text = [textField.text substringToIndex:self.maxInputLength];
    }
    
}

#pragma mark - Setters 


@end
