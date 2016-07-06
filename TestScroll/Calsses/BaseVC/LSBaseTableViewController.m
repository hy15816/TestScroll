//
//  LSBaseTableViewController.m
//  TestScroll
//
//  Created by Lost_souls on 16/6/29.
//  Copyright © 2016年 __lost_souls. All rights reserved.
//

#import "LSBaseTableViewController.h"

@interface LSBaseTableViewController ()

@end

@implementation LSBaseTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /************************************************************************
                                设置tableView基本属性
     ************************************************************************/
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 15)];
    view.backgroundColor = [UIColor groupTableViewBackgroundColor];
    self.tableView.tableHeaderView = view;
    self.tableView.backgroundColor = [UIColor groupTableViewBackgroundColor];
    self.tableView.tableFooterView = [[UIView alloc] init];
    
    
    /************************************************************************
                                设置分割线缩进-1.1
     ************************************************************************/
    [self updateSeparatorInset:UIEdgeInsetsZero obj:self.tableView];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Private Mothod

- (void)updateSeparatorInset:(UIEdgeInsets)tabSeparatorInset obj:(id)obj {
    
    if ([obj respondsToSelector:@selector(setSeparatorInset:)]) {
        [obj setSeparatorInset:tabSeparatorInset];
    }
    
    if ([obj respondsToSelector:@selector(setLayoutMargins:)]) {
        [obj setLayoutMargins:tabSeparatorInset];
    }
}


#pragma mark - Table view data source <子类必须重载/实现>

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 0;
}

//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    
//    static NSString *_cellid = @"cell id";
//    UITableViewCell *cell = [UITableViewCell cellWithTableView:tableView cid:_cellid];
//    cell.textLabel.text = [NSString stringWithFormat:@" cell - %1ld",(long)indexPath.row];
//    
//    return nil;
//}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}


#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath{
    
    /************************************************************************
                                设置分割线缩进-1.2
     ************************************************************************/
    [self updateSeparatorInset:_tabSeparatorInset obj:cell];
    
}


#pragma mark - Setters


- (void)setTabSeparatorInset:(UIEdgeInsets)tabSeparatorInset{
    
    _tabSeparatorInset = tabSeparatorInset;
    
    [self updateSeparatorInset:tabSeparatorInset obj:self.tableView];
}



#pragma mark - Public Method

- (NSString *)cellText:(BOOL)didLoad{
    
    if (!didLoad) {
        return @"";
    }
    
    return @"甲乙双方本着相互信任，真诚合作的原则，经双方友好协商，就乙方为甲方 提供特定服务达成一致意见，特签订本合同(包括本合同附件A)。\n服务内容\n1、乙方同意向甲方提供附于本合同并作为本合同一部分的附件A所列的特定服务。 的内容、时限、衡量成果的标准见附件A。\n2、如果乙方在工作中因自身过错而发生任何错误或遗漏，乙方应无条件更正，而不另外收费，并对因此而对甲方造成的损失承担赔偿责任，赔偿以附件A所载明的该项服务内容对应之服务费为限。若因甲方原因造成工作的延误，将由甲方承担相应的损失。\n3、乙方的服务承诺：  1） 乙方接到甲方通过电话、信函传真、电子邮件、网甲乙双方本着相互信任，真诚合作的原则，经双方友好协商，就乙方为甲方 提供特定服务达成一致意见，特签订本合同(包括本合同附件A)。\n服务内容\n1、乙方同意向甲方提供附于本合同并作为本合同一部分的附件A所列的特定服务。 的内容、时限、衡量成果的标准见附件A。\n2、如果乙方在工作中因自身过错而发生任何错误或遗漏，乙方应无条件更正，而不另外收费，并对因此而对甲方造成的损失承担赔偿责任，赔偿以附件A所载明的该项服务内容对应之服务费为限。若因甲方原因造成工作的延误，将由甲方承担相应的损失。\n3、乙方的服务承诺：  1） 乙方接到甲方通过电话、信函传真、电子邮件、网甲乙双方本着相互信任，真诚合作的原则，经双方友好协商，就乙方为甲方 提供特定服务达成一致意见，特签订本合同(包括本合同附件A)。\n服务内容\n1、乙方同意向甲方提供附于本合同并作为本合同一部分的附件A所列的特定服务。 的内容、时限、衡量成果的标准见附件A。\n2、如果乙方在工作中因自身过错而发生任何错误或遗漏，乙方应无条件更正，而不另外收费，并对因此而对甲方造成的损失承担赔偿责任，赔偿以附件A所载明的该项服务内容对应之服务费为限。若因甲方原因造成工作的延误，将由甲方承担相应的损失。\n3、乙方的服务承诺：  1） 乙方接到甲方通过电话、信函传真、电子邮件、网甲乙双方本着相互信任，真诚合作的原则，经双方友好协商，就乙方为甲方 提供特定服务达成一致意见，特签订本合同(包括本合同附件A)。\n服务内容\n1、乙方同意向甲方提供附于本合同并作为本合同一部分的附件A所列的特定服务。 的内容、时限、衡量成果的标准见附件A。\n2、如果乙方在工作中因自身过错而发生任何错误或遗漏，乙方应无条件更正，而不另外收费，并对因此而对甲方造成的损失承担赔偿责任，赔偿以附件A所载明的该项服务内容对应之服务费为限。若因甲方原因造成工作的延误，将由甲方承担相应的损失。\n3、乙方的服务承诺：  1） 乙方接到甲方通过电话、信函传真、电子邮件、网甲乙双方本着相互信任，真诚合作的原则，经双方友好协商，就乙方为甲方 提供特定服务达成一致意见，特签订本合同(包括本合同附件A)。\n服务内容\n1、乙方同意向甲方提供附于本合同并作为本合同一部分的附件A所列的特定服务。 的内容、时限、衡量成果的标准见附件A。\n2、如果乙方在工作中因自身过错而发生任何错误或遗漏，乙方应无条件更正，而不另外收费，并对因此而对甲方造成的损失承担赔偿责任，赔偿以附件A所载明的该项服务内容对应之服务费为限。若因甲方原因造成工作的延误，将由甲方承担相应的损失。\n3、乙方的服务承诺：  1） 乙方接到甲方通过电话、信函传真、电子邮件、网甲乙双方本着相互信任，真诚合作的原则，经双方友好协商，就乙方为甲方 提供特定服务达成一致意见，特签订本合同(包括本合同附件A)。\n服务内容\n1、乙方同意向甲方提供附于本合同并作为本合同一部分的附件A所列的特定服务。 的内容、时限、衡量成果的标准见附件A。\n2、如果乙方在工作中因自身过错而发生任何错误或遗漏，乙方应无条件更正，而不另外收费，并对因此而对甲方造成的损失承担赔偿责任，赔偿以附件A所载明的该项服务内容对应之服务费为限。若因甲方原因造成工作的延误，将由甲方承担相应的损失。\n3、乙方的服务承诺：  1） 乙方接到甲方通过电话、信函传真、电子邮件、网甲乙双方本着相互信任，真诚合作的原则，经双方友好协商，就乙方为甲方 提供特定服务达成一致意见，特签订本合同(包括本合同附件A)。\n服务内容\n1、乙方同意向甲方提供附于本合同并作为本合同一部分的附件A所列的特定服务。 的内容、时限、衡量成果的标准见附件A。\n2、如果乙方在工作中因自身过错而发生任何错误或遗漏，乙方应无条件更正，而不另外收费，并对因此而对甲方造成的损失承担赔偿责任，赔偿以附件A所载明的该项服务内容对应之服务费为限。若因甲方原因造成工作的延误，将由甲方承担相应的损失。\n3、乙方的服务承诺：  1） 乙方接到甲方通过电话、信函传真、电子邮件、网甲乙双方本着相互信任，真诚合作的原则，经双方友好协商，就乙方为甲方 提供特定服务达成一致意见，特签订本合同(包括本合同附件A)。\n服务内容\n1、乙方同意向甲方提供附于本合同并作为本合同一部分的附件A所列的特定服务。 的内容、时限、衡量成果的\n服务内容\n1、乙方同意向甲方提供附于本合同并作为本合同一部分的附件A所列的特定服务。 的内容、时限、衡量成果的标准见附件A。\n2、如果乙方在工作中因自身过错而发生任何错误或遗漏，乙方应无条件更正，而不另外收费，并对因此而对甲方造成的损失承担赔偿责任，赔偿以附件A所载明的该项服务内容对应之服务费为限。若因甲方原因造成工作的延误，将由甲方承担相应的损失。\n3、乙方的服务承诺：  1） 乙方接到甲方通过电话、信函传真、电子邮件、网甲乙双方本着相互信任，真诚合作的原则，经双方友好协商，就乙方为甲方 提供特定服务达成一致意见，特签订本合同(包括本合同附件A)。\n服务内容\n1、乙方同意向甲方提供附于本合同并作为本合同一部分的附件A所列的特定服务。 的内容、时限、衡量成果的标准见附件A。\n2、如果乙方在工作中因自身过错而发生任何错误或遗漏，乙方应无条件更正，而不另外收费，并对因此而对甲方造成的损失承担赔偿责任，赔偿以附件A所载明的该项服务内容对应之服务费为限。若因甲方原因造成工作的延误，将由甲方承担相应的损失。\n3、乙方的服务承诺：  1） 乙方接到甲方通过电话、信函传真、电子邮件、网甲乙双方本着相互信任，真诚合作的原则，经双方友好协商，就乙方为甲方 提供特定服务达成一致意见，特签订本合同(包括本合同附件A)。\n服务内容\n1、乙方同意向甲方提供附于本合同并作为本合同一部分的附件A所列的特定服务。 的内容、时限、衡量成果的标准见附件A。\n2、如果乙方在工作中因自身过错而发生任何错误或遗漏，乙方应无条件更正，而不另外收费，并对因此而对甲方造成的损失承担赔偿责任，赔偿以附件A所载明的该项服务内容对应之服务费为限。若因甲方原因造成工作的延误，将由甲方承担相应的损失。\n3、乙方的服务承诺：  1） 乙方接到甲方通过电话、信函传真、电子邮件、网甲乙双方本着相互信任，真诚合作的原则，经双方友好协商，就乙方为甲方 提供特定服务达成一致意见，特签订本合同(包括本合同附件A)。\n服务内容\n1、乙方同意向甲方提供附于本合同并作为本合同一部分的附件A所列的特定服务。 的内容、时限、衡量成果的标准见附件A。\n2、如果乙方在工作中因自身过错而发生任何错误或遗漏，乙方应无条件更正，而不另外收费，并对因此而对甲方造成的损失承担赔偿责任，赔偿以附件A所载明的该项服务内容对应之服务费为限。若因甲方原因造成工作的延误，将由甲方承担相应的损失。\n3、乙方的服务承诺：  1） 乙方接到甲方通过电话、信函传真、电子邮件、网甲乙双方本着相互信任，真诚合作的原则，经双方友好协商，就乙方为甲方 提供特定服务达成一致意见，特签订本合同(包括本合同附件A)。\n服务内容\n1、乙方同意向甲方提供附于本合同并作为本合同一部分的附件A所列的特定服务。 的内容、时限、衡量成果的标准见附件A。\n2、如果乙方在工作中因自身过错而发生任何错误或遗漏，乙方应无条件更正，而不另外收费，并对因此而对甲方造成的损失承担赔偿责任，赔偿以附件A所载明的该项服务内容对应之服务费为限。若因甲方原因造成工作的延误，将由甲方承担相应的损失。\n3、乙方的服务承诺：  1） 乙方接到甲方通过电话、信函传真、电子邮件、网甲乙双方本着相互信任，真诚合作的原则，经双方友好协商，就乙方为甲方 提供特定服务达成一致意见，特签订本合同(包括本合同附件A)。\n服务内容\n1、乙方同意向甲方提供附于本合同并作为本合同一部分的附件A所列的特定服务。 的内容、时限、衡量成果的标准见附件A。\n2、如果乙方在工作中因自身过错而发生任何错误或遗漏，乙方应无条件更正，而不另外收费，并对因此而对甲方造成的损失承担赔偿责任，赔偿以附件A所载明的该项服务内容对应之服务费为限。若因甲方原因造成工作的延误，将由甲方承担相应的损失。\n3、乙方的服务承诺：  1） 乙方接到甲方通过电话、信函传真、电子邮件、网甲乙双方本着相互信任，真诚合作的原则，经双方友好协商，就乙方为甲方 提供特定服务达成一致意见，特签订本合同(包括本合同附件A)。\n服务内容\n1、乙方同意向甲方提供附于本合同并作为本合同一部分的附件A所列的特定服务。 的内容、时限、衡量成果的标准见附件A。\n2、如果乙方在工作中因自身过错而发生任何错误或遗漏，乙方应无条件更正，而不另外收费，并对因此而对甲方造成的损失承担赔偿责任，赔偿以附件A所载明的该项服务内容对应之服务费为限。若因甲方原因造成工作的延误，将由甲方承担相应的损失。\n3、乙方的服务承诺：  1） 乙方接到甲方通过电话、信函传真、电子邮件、网甲乙双方本着相互信任，真诚合作的原则，经双方友好协商，就乙方为甲方 提供特定服务达成一致意见，特签订本合同(包括本合同附件A)。\n服务内容\n1、乙方同意向甲方提供附于本合同并作为本合同一部分的附件A所列的特定服务。 的内容、时限、衡量成果的标准见附件A。\n2、如果乙方在工作中因自身过错而发生任何错误或遗漏，乙方应无条件更正，而不另外收费，并对因此而对甲方造成的损失承担赔偿责任，赔偿以附件A所载明的该项服务内容对应之服务费为限。若因甲方原因造成工作的延误，将由甲方承担相应的损失。\n3、乙方的服务承诺：  1） 乙方接到甲方通过电话、信函传真、电子邮件、网甲乙双方本着相互信任，真诚合作的原则，经双方友好协商，就乙方为甲方 提供特定服务达成一致意见，特签订本合同(包括本合同附件A)。\n服务内容\n1、乙方同意向甲方提供附于本合同并作为本合同一部分的附件A所列的特定服务。 的内容、时限、衡量成果的标准见附件A。\n2、如果乙方在工作中因自身过错而发生任何错误或遗漏，乙方应无条件更正，而不另外收费，并对因此而对甲方造成的损失承担赔偿责任，赔偿以附件A所载明的该项服务内容对应之服务费为限。若因甲方原因造成工作的延误，将由甲方承担相应的损失。\n3、乙方的服务承诺：  1） 乙方接到甲方通过电话、信函传真、电子邮件、网甲乙双方本着相互信任，真诚合作的原则，经双方友好协商，就乙方为甲方 提供特定服务达成一致意见，特签订本合同(包括本合同附件A)。\n服务内容\n1、乙方同意向甲方提供附于本合同并作为本合同一部分的附件A所列的特定服务。 的内容、时限、衡量成果的标准见附件A。\n2、如果乙方在工作中因自身过错而发生任何错误或遗漏，乙方应无条件更正，而不另外收费，并对因此而对甲方造成的损失承担赔偿责任，赔偿以附件A所载明的该项服务内容对应之服务费为限。若因甲方原因造成工作的延误，将由甲方承担相应的损失。\n3、乙方的服务承诺：  1） 乙方接到甲方通过电话、信函传真、电子邮件、网甲乙双方本着相互信任，真诚合作的原则，经双方友好协商，就乙方为甲方 提供特定服务达成一致意见，特签订本合同(包括本合同附件A)。\n服务内容\n1、乙方同意向甲方提供附于本合同并作为本合同一部分的附件A所列的特定服务。 的内容、时限、衡量成果的标准见附件A。\n2、如果乙方在工作中因自身过错而发生任何错误或遗漏，乙方应无条件更正，而不另外收费，并对因此而对甲方造成的损失承担赔偿责任，赔偿以附件A所载明的该项服务内容对应之服务费为限。若因甲方原因造成工作的延误，将由甲方承担相应的损失。\n3、乙方的服务承诺：  1） 乙方接到甲方通过电话、信函传真、电子邮件、网甲乙双方本着相互信任，真诚合作的原则，经双方友好协商，就乙方为甲方 提供特定服务达成一致意见，特签订本合同(包括本合同附件A)。\n服务内容\n1、乙方同意向甲方提供附于本合同并作为本合同一部分的附件A所列的特定服务。 的内容、时限、衡量成果的标准见附件A。\n2、如果乙方在工作中因自身过错而发生任何错误或遗漏，乙方应无条件更正，而不另外收费，并对因此而对甲方造成的损失承担赔偿责任，赔偿以附件A所载明的该项服务内容对应之服务费为限。若因甲方原因造成工作的延误，将由甲方承担相应的损失。\n3、乙方的服务承诺：  1） 乙方接到甲方通过电话、信函传真、电子邮件、网甲乙双方本着相互信任，真诚合作的原则，经双方友好协商，就乙方为甲方 提供特定服务达成一致意见，特签订本合同(包括本合同附件A)。\n服务内容\n1、乙方同意向甲方提供附于本合同并作为本合同一部分的附件A所列的特定服务。 的内容、时限、衡量成果的标准见附件A。\n2、如果乙方在工作中因自身过错而发生任何错误或遗漏，乙方应无条件更正，而不另外收费，并对因此而对甲方造成的损失承担赔偿责任，赔偿以附件A所载明的该项服务内容对应之服务费为限。若因甲方原因造成工作的延误，将由甲方承担相应的损失。\n3、乙方的服务承诺：  1） 乙方接到甲方通过电话、信函传真、电子邮件、网甲乙双方本着相互信任，真诚合作的原则，经双方友好协商，就乙方为甲方 提供特定服务达成一致意见，特签订本合同(包括本合同附件A)。\n服务内容\n1、乙方同意向甲方提供附于本合同并作为本合同一部分的附件A所列的特定服务。 的内容、时限、衡量成果的标准见附件A。\n2、如果乙方在工作中因自身过错而发生任何错误或遗漏，乙方应无条件更正，而不另外收费，并对因此而对甲方造成的损失承担赔偿责任，赔偿以附件A所载明的该项服务内容对应之服务费为限。若因甲方原因造成工作的延误，将由甲方承担相应的损失。\n3、乙方的服务承诺：  1） 乙方接到甲方通过电话、信函传真、电子邮件、网甲乙双方本着相互信任，真诚合作的原则，经双方友好协商，就乙方为甲方 提供特定服务达成一致意见，特签订本合同(包括本合同附件A)。\n服务内容\n1、乙方同意向甲方提供附于本合同并作为本合同一部分的附件A所列的特定服务。 的内容、时限、衡量成果的标准见附件A。\n2、如果乙方在工作中因自身过错而发生任何错误或遗漏，乙方应无条件更正，而不另外收费，并对因此而对甲方造成的损失承担赔偿责任，赔偿以附件A所载明的该项服务内容对应之服务费为限。若因甲方原因造成工作的延误，将由甲方承担相应的损失。\n3、乙方的服务承诺：  1） 乙方接到甲方通过电话、信函传真、电子邮件、网甲乙双方本着相互信任，真诚合作的原则，经双方友好协商，就乙方为甲方 提供特定服务达成一致意见，特签订本合同(包括本合同附件A)。\n服务内容\n1、乙方同意向甲方提供附于本合同并作为本合同一部分的附件A所列的特定服务。 的内容、时限、衡量成果的标准见附件A。\n2、如果乙方在工作中因自身过错而发生任何错误或遗漏，乙方应无条件更正，而不另外收费，并对因此而对甲方造成的损失承担赔偿责任，赔偿以附件A所载明的该项服务内容对应之服务费为限。若因甲方原因造成工作的延误，将由甲方承担相应的损失。\n3、乙方的服务承诺：  1） 乙方接到甲方通过电话、信函传真、电子邮件、网甲乙双方本着相互信任，真诚合作的原则，经双方友好协商，就乙方为甲方 提供特定服务达成一致意见，特签订本合同(包括本合同附件A)。\n服务内容\n1、乙方同意向甲方提供附于本合同并作为本合同一部分的附件A所列的特定服务。 的内容、时限、衡量成果的标准见附件A。\n2、如果乙方在工作中因自身过错而发生任何错误或遗漏，乙方应无条件更正，而不另外收费，并对因此而对甲方造成的损失承担赔偿责任，赔偿以附件A所载明的该项服务内容对应之服务费为限。若因甲方原因造成工作的延误，将由甲方承担相应的损失。\n3、乙方的服务承诺：  1） 乙方接到甲方通过电话、信函传真、电子邮件、网甲乙双方本着相互信任，真诚合作的原则，经双方友好协商，就乙方为甲方 提供特定服务达成一致意见，特签订本合同(包括本合同附件A)。\n服务内容\n1、乙方同意向甲方提供附于本合同并作为本合同一部分的附件A所列的特定服务。 的内容、时限、衡量成果的标准见附件A。\n2、如果乙方在工作中因自身过错而发生任何错误或遗漏，乙方应无条件更正，而不另外收费，并对因此而对甲方造成的损失承担赔偿责任，赔偿以附件A所载明的该项服务内容对应之服务费为限。若因甲方原因造成工作的延误，将由甲方承担相应的损失。\n3、乙方的服务承诺：  1） 乙方接到甲方通过电话、信函传真、电子邮件、网甲乙双方本着相互信任，真诚合作的原则，经双方友好协商，就乙方为甲方 提供特定服务达成一致意见，特签订本合同(包括本合同附件A)。\n服务内容\n1、乙方同意向甲方提供附于本合同并作为本合同一部分的附件A所列的特定服务。 的内容、时限、衡量成果的标准见附件A。\n2、如果乙方在工作中因自身过错而发生任何错误或遗漏，乙方应无条件更正，而不另外收费，并对因此而对甲方造成的损失承担赔偿责任，赔偿以附件A所载明的该项服务内容对应之服务费为限。若因甲方原因造成工作的延误，将由甲方承担相应的损失。\n3、乙方的服务承诺：  1） 乙方接到甲方通过电话、信函传真、电子邮件、网甲乙双方本着相互信任，真诚合作的原则，经双方友好协商，就乙方为甲方 提供特定服务达成一致意见，特签订本合同(包括本合同附件A)。\n服务内容\n1、乙方同意向甲方提供附于本合同并作为本合同一部分的附件A所列的特定服务。 的内容、时限、衡量成果的标准见附件A。\n2、如果乙方在工作中因自身过错而发生任何错误或遗漏，乙方应无条件更正，而不另外收费，并对因此而对甲方造成的损失承担赔偿责任，赔偿以附件A所载明的该项服务内容对应之服务费为限。若因甲方原因造成工作的延误，将由甲方承担相应的损失。\n3、乙方的服务承诺：  1） 乙方接到甲方通过电话、信函传真、电子邮件、网甲乙双方本着相互信任，真诚合作的原则，经双方友好协商，就乙方为甲方 提供特定服务达成一致意见，特签订本合同(包括本合同附件A)。\n服务内容\n1、乙方同意向甲方提供附于本合同并作为本合同一部分的附件A所列的特定服务。 的内容、时限、衡量成果的标准见附件A。\n2、如果乙方在工作中因自身过错而发生任何错误或遗漏，乙方应无条件更正，而不另外收费，并对因此而对甲方造成的损失承担赔偿责任，赔偿以附件A所载明的该项服务内容对应之服务费为限。若因甲方原因造成工作的延误，将由甲方承担相应的损失。\n3、乙方的服务承诺：  1） 乙方接到甲方通过电话、信函传真、电子邮件、网 end";
}


@end
