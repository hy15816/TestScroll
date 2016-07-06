//
//  GlobalTool.m
//  TestScroll
//
//  Created by Lost_souls on 16/6/29.
//  Copyright © 2016年 __lost_souls. All rights reserved.
//

#import "GlobalTool.h"

@interface GlobalTool ()

@property (strong,nonatomic) NSMutableArray *actsList;

@end

@implementation GlobalTool

+ (GlobalTool *)shar {
    static GlobalTool *global = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (global == nil) {
            global = [[GlobalTool alloc] init];
        }
    });
    
    return global;
}

#pragma mark - UIActivityIndicatorView

+ (void)showActInView:(UIView *)view {
    [[GlobalTool shar] showActInView:view];
}

- (void)showActInView:(UIView *)view{
    UIActivityIndicatorView *_activityIndicatorView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite];
    _activityIndicatorView.frame = CGRectMake(10, (view.frame.size.height -10)/2, 10, 10);
    _activityIndicatorView.color = [UIColor grayColor];
    //    _activityIndicatorView.center = view.center;
    [view addSubview:_activityIndicatorView];
    
    dispatch_main(^{
        [_activityIndicatorView startAnimating];
    });
    
    [self.actsList addObject:_activityIndicatorView];
}


+ (void)dismissAct:(NSInteger)index {
    
    [[GlobalTool shar] dismissAct:index];
}
- (void)dismissAct:(NSInteger)index{
    if (index == -1) {
        for (UIActivityIndicatorView *act in self.actsList) {
            dispatch_main(^{
                [act stopAnimating];
            });
        }
    }else{
        if (index < self.actsList.count) {
            
            UIActivityIndicatorView *act = (UIActivityIndicatorView *)self.actsList[index];
            dispatch_main(^{
                [act stopAnimating];
            });
        }else{
            NSLog(@"%s :index must less than acts count",__func__);
        }
    }
}



#pragma mark - setters  & getters

- (NSMutableArray *)actsList{
    if (!_actsList) {
        _actsList = [[NSMutableArray alloc] init];
    }
    return _actsList;
}

@end
