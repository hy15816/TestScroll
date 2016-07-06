//
//  NewTextView.m
//  TestScroll
//
//  Created by JiangWei on 16/7/4.
//  Copyright © 2016年 __lost_souls. All rights reserved.
//

#import "NewTextView.h"

@implementation NewTextView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    [super drawRect:rect];
    
}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [super touchesBegan:touches withEvent:event];
    
    UITouch *touch = [touches anyObject];
    
    CGPoint point = [touch locationInView:self];
    
    beginSize = point.y;
    
    if (self.delegates && [self.delegates respondsToSelector:@selector(touchesBeginWithSelfView:)])
    {
        [self.delegates touchesBeginWithSelfView:self];
    }
}

-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [super touchesMoved:touches withEvent:event];
    
    UITouch *touch = [touches anyObject];
    
    CGPoint point = [touch locationInView:self];
    
    moveSize = point.y;
    
    BOOL isTop = NO;
    
    BOOL isBest = NO;
    
    CGFloat size = .0f;
    
    if (moveSize<moveSize) //up
    {
        isTop = YES;
        size = moveSize - beginSize;
    }
    else //down
    {
        size = beginSize - moveSize;
    }
    
    CGFloat contentY = self.contentOffset.y;
    CGFloat contentHeight = self.contentSize.height;
    
    if (contentY <= 0 || contentY >= contentHeight-self.frame.size.height)
    {
        isBest = YES;
    }
    
    if (self.delegates && [self.delegates respondsToSelector:@selector(touchesMoveWithSelfView:isTop:moveSize:isBest:)])
    {
        [self.delegates touchesMoveWithSelfView:self isTop:isTop moveSize:size isBest:isBest];
    }
    
    beginSize = point.y;
    
}



@end
