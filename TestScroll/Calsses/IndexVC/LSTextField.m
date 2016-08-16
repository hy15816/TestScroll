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
// 字母&数字
#define LSAlphanumeric @"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
// 字母
#define LSAlphabet @"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
// 数字
#define LSNumber @"0123456789"
// 数字&小数点
#define LSNumberPoint   @"0123456789.\n"



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
    self.maxInputLength = ARG_MAX;
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
    
    if (self.textType == LSTextFieldTextTypeAmount) {
        return [self field:textField range:range string:string];
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

- (BOOL)field:(UITextField *)textField range:(NSRange)range string:(NSString *)string{
    
    if (textField.text.length > self.maxInputLength) {
        return range.location < self.maxInputLength+1;
    }else{
        BOOL isHaveDian = YES;
        if ([textField.text rangeOfString:@"."].location==NSNotFound) {
            isHaveDian=NO;
        }
        if ([string length]>0) {
            unichar single=[string characterAtIndex:0];//当前输入的字符
            if ((single >='0' && single<='9') || single=='.')//数据格式正确
            {
                // 首字母不能为小数点
                if([textField.text length]==0){
                    if(single == '.'){
                        [textField.text stringByReplacingCharactersInRange:range withString:@""];
                        return NO;
                    }
                }
                if([textField.text length]==1 && [textField.text isEqualToString:@"0"]){
                    if(single != '.'){
                        [textField.text stringByReplacingCharactersInRange:range withString:@""];
                        return NO;
                    }
                }
                if (single=='.') {
                    if(!isHaveDian)//text中还没有小数点
                    {
                        isHaveDian=YES;
                        return YES;
                    }else{
                        [textField.text stringByReplacingCharactersInRange:range withString:@""];
                        return NO;
                    }
                }else {
                    if (isHaveDian){ //存在小数点
                        //判断小数点的位数
                        NSRange ran=[textField.text rangeOfString:@"."];
                        NSInteger tt=range.location-ran.location;
                        if (tt <= 2){
                            return YES;
                        }else{
                            return NO;
                        }
                    } else {
                        return YES;
                    }
                }
            }else{//输入的数据格式不正确
                [textField.text stringByReplacingCharactersInRange:range withString:@""];
                return NO;
            }
        } else {
            return YES;
        }
    }
}

#pragma mark -  textFieldDidChanged

- (void)lsTextFieldDidChange:(UITextField *)textField {

    if (textField.text.length > self.maxInputLength) {
        textField.text = [textField.text substringToIndex:self.maxInputLength];
    }
    
}

#pragma mark - Setters 


@end
