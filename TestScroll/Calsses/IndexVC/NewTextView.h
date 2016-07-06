//
//  NewTextView.h
//  TestScroll
//
//  Created by JiangWei on 16/7/4.
//  Copyright © 2016年 __lost_souls. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol NewTextViewDelegate <NSObject>

-(void)touchesBeginWithSelfView:(UITextView *)selfView;

-(void)touchesMoveWithSelfView:(UITextView *)selfView isTop:(BOOL)isTop moveSize:(CGFloat)size isBest:(BOOL)isBest;

@end


@interface NewTextView : UITextView<UIScrollViewDelegate>
{
    CGFloat beginSize;
    CGFloat moveSize;
    
}

@property(weak,nonatomic)id<NewTextViewDelegate>delegates;

@end
