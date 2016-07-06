//
//  SecondViewController.m
//  TestScroll
//
//  Created by Lost_souls on 16/6/29.
//  Copyright © 2016年 __lost_souls. All rights reserved.
//


#import "SecondViewController.h"

typedef NS_ENUM(NSInteger,TableViewLocation) {
    TableViewLocationTop = 0,
    TableViewLocationBottom
};

@interface SecondViewController ()
{
    TableViewLocation _location;
    BOOL _didResetLocation;
}
@property (strong,nonatomic) UITextView *lsTextView;

@property (nonatomic) CGFloat oldInitTableViewY;
@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _location = TableViewLocationTop;
    //获取到tableview初始的contentY
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.4 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        _oldInitTableViewY = self.tableView.contentOffset.y;
        
    });
    
}

- (void)viewDidAppear:(BOOL)animated{
    
    [super viewDidAppear:animated];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        self.lsTextView.text = [self cellText:YES];
        NSIndexPath *path = [NSIndexPath indexPathForRow:0 inSection:1];
        [self.tableView reloadRowsAtIndexPaths:@[path] withRowAnimation:UITableViewRowAnimationAutomatic];
    });
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
            [cell.contentView addSubview:self.lsTextView];
            
        }
        
        if (!self.lsTextView.text.length) {
            [GlobalTool showActInView:self.lsTextView];
        }else{
            [GlobalTool dismissAct:0];
        }
        
        return cell;
    }
    
    
    return nil;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (indexPath.section == 1) {
        return 300.f;
    }
    
    return 50.f;
}


- (UITextView *)lsTextView{
    if (!_lsTextView) {
        _lsTextView = [[UITextView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 300)];
        _lsTextView.textColor = [UIColor grayColor];
        _lsTextView.font = [UIFont systemFontOfSize:16];
        _lsTextView.editable = NO;
        _lsTextView.selectable = NO;
        
        _lsTextView.multipleTouchEnabled = YES;
        _lsTextView.delegate = self; //(主要是scrollviewDelegate)
//        _lsTextView.delegates = self; 
        
    }
    
    return _lsTextView;
}

//-(void)touchesBeginWithSelfView:(UITextView *)selfView
//{
//    _lsTextView.scrollEnabled = YES;
//    if (selfView.contentOffset.y>0 ||selfView.contentOffset.y<selfView.contentSize.height)
//    {
//        
//        selfView.scrollEnabled = YES;
//    }
//}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    
    
    CGPoint p = scrollView.contentOffset;
    
    CGFloat downMax= _lsTextView.contentSize.height-_lsTextView.frame.size.height;
    
    CGFloat tableViewOldY = self.tableView.contentOffset.y;
    
    CGFloat downTableViewMax= self.tableView.contentSize.height-self.tableView.frame.size.height;
    

    
    if (![scrollView isKindOfClass:[UITableView class]])
    {
//        if (aaaa != 0)
//        {
//            _textViewCurrentY = aaaa;
//        }
        
        if (p.y<=0)
        {
            _location = TableViewLocationTop;
            _didResetLocation = NO;
            
            NSLog(@"1111111");
            NSLog(@"1 : %f",p.y);
            [_lsTextView setContentOffset:CGPointMake(0, 0) animated:NO];
            
            //可以给个限制
            //限制（如果要同tableview原来的相同则还需要操作）
            CGFloat theY = tableViewOldY+p.y;
            
            if (theY<-120)
            {
                theY = -120;
            }
            
            [self.tableView setContentOffset:CGPointMake(0, theY) animated:NO];
            
//            _lsTextView.userInteractionEnabled = NO;
            
            
//            _lsTextView.scrollEnabled = NO;
            
//            [_lsTextView setContentOffset:CGPointMake(0, 0)];
            
        }
        else if (p.y>=downMax)
        {
            _location = TableViewLocationBottom;
            _didResetLocation = NO;
            
            NSLog(@"222222");
            NSLog(@"2 : %f",p.y);
            [_lsTextView setContentOffset:CGPointMake(0, downMax) animated:NO];
            
            CGFloat aaa= (p.y-downMax);
            
            CGFloat away = tableViewOldY+aaa ;
            
            //限制（如果要同tableview原来的相同则还需要操作）
            if (away>downTableViewMax+80)
            {
                away = downTableViewMax +80;
            }
            
            [self.tableView setContentOffset:CGPointMake(0, away) animated:NO];
            
            
//            _lsTextView.scrollEnabled = NO;
            
//            _lsTextView.userInteractionEnabled = NO;
            
//            [_lsTextView setContentOffset:CGPointMake(0, aaaa)];
            
            
        }
        else
        {
            NSLog(@"333333");
            NSLog(@"---------- : %f",p.y);
            if (_location == TableViewLocationTop && !_didResetLocation) {
                _didResetLocation = YES;
                [self.tableView setContentOffset:CGPointMake(0, -64) animated:YES];
            }else if (_location == TableViewLocationBottom && !_didResetLocation){
                _didResetLocation = YES;
                [self.tableView setContentOffset:CGPointMake(0, self.tableView.contentSize.height-self.tableView.frame.size.height) animated:YES];
            }
            
        }
//        else if (p.y==0)
//        {
//            _lsTextView.userInteractionEnabled = YES;
//        }
//        else if (p.y!=0 && p.y!=_textViewCurrentY)
//        {
//            NSLog(@"---------- : %f",p.y);
//            NSLog(@"333333");
//            
//            _lsTextView.scrollEnabled = YES;
//        }
    }
    else
    {
        
        //tableview 的滚动如果textview处于不可点击则解除textview的不可点击状态
//        if (!_lsTextView.isUserInteractionEnabled)
//        {
//            _lsTextView.userInteractionEnabled = YES;
//        }
        
//        if (_lsTextView.contentOffset.y == _textViewCurrentY || _lsTextView.contentOffset.y ==0)
//        {
//            _lsTextView.userInteractionEnabled = YES;
//        }
        
    }

}

-(void)scrollViewWillEndDragging:(UIScrollView *)scrollView withVelocity:(CGPoint)velocity targetContentOffset:(inout CGPoint *)targetContentOffset
{
    
    if (![scrollView isKindOfClass:[UITableView class]])
    {
        
        CGPoint p = scrollView.contentOffset;
        
        CGFloat downMax= _lsTextView.contentSize.height-_lsTextView.frame.size.height;
        
        CGFloat tableViewOldY = self.tableView.contentOffset.y;
        
        CGFloat downTableViewMax= self.tableView.contentSize.height-self.tableView.frame.size.height;
        
        //拉超出tableview松手后则反弹回去
        if (p.y<=0 && tableViewOldY<0)
        {
            [_lsTextView setContentOffset:CGPointMake(0, 0) animated:NO];
            
            [self.tableView setContentOffset:CGPointMake(0, _oldInitTableViewY) animated:YES];
        }
        else if (p.y>=downMax && tableViewOldY>downTableViewMax)
        {
            
            [_lsTextView setContentOffset:CGPointMake(0, downMax) animated:NO];
            
            [self.tableView setContentOffset:CGPointMake(0, downTableViewMax) animated:YES];
            
        }
    }
//    [self.tableView setContentOffset:CGPointMake(0, y) animated:YES];
    
}

//-(void)touchesMoveWithSelfView:(UITextView *)selfView isTop:(BOOL)isTop moveSize:(CGFloat)size isBest:(BOOL)isBest
//{
//    return;
//    
//    NSLog(@"--%f",size);
//    
//    CGPoint p = selfView.contentOffset;
//    
//    CGFloat aaaa= selfView.contentSize.height-selfView.frame.size.height;
//    
//    CGFloat currentY = self.tableView.contentOffset.y;
//    
//    if (isTop)
//    {
//
//        if (p.y<=0||p.y>=aaaa)
//        {
//            [self.tableView setContentOffset:CGPointMake(0, size+currentY) animated:YES];
//        }
//        
//    }
//    else
//    {
//        
//        if (p.y<=0||p.y>=aaaa)
//        {
//            [self.tableView setContentOffset:CGPointMake(0, currentY-size) animated:YES];
//        }
//    }
//    
//}


@end
