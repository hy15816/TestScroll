//
//  LSTextField.h
//  TestScroll
//
//  Created by Lost_souls on 16/7/4.
//  Copyright © 2016年 __lost_souls. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  TextField 可以输入的文本类型
 */
typedef NS_ENUM(NSInteger,LSTextFieldTextType) {
    
    LSTextFieldTextTypeDefault = 0,         // 默认,所有类型<数字，字母，符号等>
    LSTextFieldTextTypeNumber,              // 纯数字
    LSTextFieldTextTypeAlphabet,            // 纯字母
    LSTextFieldTextTypeAlphanumeric         // 纯(字母数字)
};

@interface LSTextField : UITextField<UITextFieldDelegate>

/**
 *  是否弹出键盘  df = yes
 */
@property (assign,nonatomic) BOOL popKeyboard;

/**
 *  最大输入长度
 */
@property (assign,nonatomic) NSInteger maxInputLength;

/**
 *  TextField 可以输入的文本类型  df = LSTextFieldTextTypeDefault   
 *  @see    LSTextFieldTextType
 */
@property (assign,nonatomic) LSTextFieldTextType textType;


@end
