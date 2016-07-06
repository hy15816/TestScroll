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
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 15)];
    view.backgroundColor = [UIColor groupTableViewBackgroundColor];
    self.tableView.tableHeaderView = view;
    self.tableView.backgroundColor = [UIColor groupTableViewBackgroundColor];
    self.tableView.tableFooterView = [[UIView alloc] init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Incomplete implementation, return the number of sections
//    return 0;
//}
//
//- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete implementation, return the number of rows
//    return 0;
//}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


- (NSString *)cellText:(BOOL)didLoad{
    
    if (!didLoad) {
        return @"";
    }
    
    return @"甲乙双方本着相互信任，真诚合作的原则，经双方友好协商，就乙方为甲方 提供特定服务达成一致意见，特签订本合同(包括本合同附件A)。\n服务内容\n1、乙方同意向甲方提供附于本合同并作为本合同一部分的附件A所列的特定服务。 的内容、时限、衡量成果的标准见附件A。\n2、如果乙方在工作中因自身过错而发生任何错误或遗漏，乙方应无条件更正，而不另外收费，并对因此而对甲方造成的损失承担赔偿责任，赔偿以附件A所载明的该项服务内容对应之服务费为限。若因甲方原因造成工作的延误，将由甲方承担相应的损失。\n3、乙方的服务承诺：  1） 乙方接到甲方通过电话、信函传真、电子邮件、网甲乙双方本着相互信任，真诚合作的原则，经双方友好协商，就乙方为甲方 提供特定服务达成一致意见，特签订本合同(包括本合同附件A)。\n服务内容\n1、乙方同意向甲方提供附于本合同并作为本合同一部分的附件A所列的特定服务。 的内容、时限、衡量成果的标准见附件A。\n2、如果乙方在工作中因自身过错而发生任何错误或遗漏，乙方应无条件更正，而不另外收费，并对因此而对甲方造成的损失承担赔偿责任，赔偿以附件A所载明的该项服务内容对应之服务费为限。若因甲方原因造成工作的延误，将由甲方承担相应的损失。\n3、乙方的服务承诺：  1） 乙方接到甲方通过电话、信函传真、电子邮件、网甲乙双方本着相互信任，真诚合作的原则，经双方友好协商，就乙方为甲方 提供特定服务达成一致意见，特签订本合同(包括本合同附件A)。\n服务内容\n1、乙方同意向甲方提供附于本合同并作为本合同一部分的附件A所列的特定服务。 的内容、时限、衡量成果的标准见附件A。\n2、如果乙方在工作中因自身过错而发生任何错误或遗漏，乙方应无条件更正，而不另外收费，并对因此而对甲方造成的损失承担赔偿责任，赔偿以附件A所载明的该项服务内容对应之服务费为限。若因甲方原因造成工作的延误，将由甲方承担相应的损失。\n3、乙方的服务承诺：  1） 乙方接到甲方通过电话、信函传真、电子邮件、网甲乙双方本着相互信任，真诚合作的原则，经双方友好协商，就乙方为甲方 提供特定服务达成一致意见，特签订本合同(包括本合同附件A)。\n服务内容\n1、乙方同意向甲方提供附于本合同并作为本合同一部分的附件A所列的特定服务。 的内容、时限、衡量成果的标准见附件A。\n2、如果乙方在工作中因自身过错而发生任何错误或遗漏，乙方应无条件更正，而不另外收费，并对因此而对甲方造成的损失承担赔偿责任，赔偿以附件A所载明的该项服务内容对应之服务费为限。若因甲方原因造成工作的延误，将由甲方承担相应的损失。\n3、乙方的服务承诺：  1） 乙方接到甲方通过电话、信函传真、电子邮件、网甲乙双方本着相互信任，真诚合作的原则，经双方友好协商，就乙方为甲方 提供特定服务达成一致意见，特签订本合同(包括本合同附件A)。\n服务内容\n1、乙方同意向甲方提供附于本合同并作为本合同一部分的附件A所列的特定服务。 的内容、时限、衡量成果的标准见附件A。\n2、如果乙方在工作中因自身过错而发生任何错误或遗漏，乙方应无条件更正，而不另外收费，并对因此而对甲方造成的损失承担赔偿责任，赔偿以附件A所载明的该项服务内容对应之服务费为限。若因甲方原因造成工作的延误，将由甲方承担相应的损失。\n3、乙方的服务承诺：  1） 乙方接到甲方通过电话、信函传真、电子邮件、网甲乙双方本着相互信任，真诚合作的原则，经双方友好协商，就乙方为甲方 提供特定服务达成一致意见，特签订本合同(包括本合同附件A)。\n服务内容\n1、乙方同意向甲方提供附于本合同并作为本合同一部分的附件A所列的特定服务。 的内容、时限、衡量成果的标准见附件A。\n2、如果乙方在工作中因自身过错而发生任何错误或遗漏，乙方应无条件更正，而不另外收费，并对因此而对甲方造成的损失承担赔偿责任，赔偿以附件A所载明的该项服务内容对应之服务费为限。若因甲方原因造成工作的延误，将由甲方承担相应的损失。\n3、乙方的服务承诺：  1） 乙方接到甲方通过电话、信函传真、电子邮件、网甲乙双方本着相互信任，真诚合作的原则，经双方友好协商，就乙方为甲方 提供特定服务达成一致意见，特签订本合同(包括本合同附件A)。\n服务内容\n1、乙方同意向甲方提供附于本合同并作为本合同一部分的附件A所列的特定服务。 的内容、时限、衡量成果的标准见附件A。\n2、如果乙方在工作中因自身过错而发生任何错误或遗漏，乙方应无条件更正，而不另外收费，并对因此而对甲方造成的损失承担赔偿责任，赔偿以附件A所载明的该项服务内容对应之服务费为限。若因甲方原因造成工作的延误，将由甲方承担相应的损失。\n3、乙方的服务承诺：  1） 乙方接到甲方通过电话、信函传真、电子邮件、网甲乙双方本着相互信任，真诚合作的原则，经双方友好协商，就乙方为甲方 提供特定服务达成一致意见，特签订本合同(包括本合同附件A)。\n服务内容\n1、乙方同意向甲方提供附于本合同并作为本合同一部分的附件A所列的特定服务。 的内容、时限、衡量成果的\n服务内容\n1、乙方同意向甲方提供附于本合同并作为本合同一部分的附件A所列的特定服务。 的内容、时限、衡量成果的标准见附件A。\n2、如果乙方在工作中因自身过错而发生任何错误或遗漏，乙方应无条件更正，而不另外收费，并对因此而对甲方造成的损失承担赔偿责任，赔偿以附件A所载明的该项服务内容对应之服务费为限。若因甲方原因造成工作的延误，将由甲方承担相应的损失。\n3、乙方的服务承诺：  1） 乙方接到甲方通过电话、信函传真、电子邮件、网甲乙双方本着相互信任，真诚合作的原则，经双方友好协商，就乙方为甲方 提供特定服务达成一致意见，特签订本合同(包括本合同附件A)。\n服务内容\n1、乙方同意向甲方提供附于本合同并作为本合同一部分的附件A所列的特定服务。 的内容、时限、衡量成果的标准见附件A。\n2、如果乙方在工作中因自身过错而发生任何错误或遗漏，乙方应无条件更正，而不另外收费，并对因此而对甲方造成的损失承担赔偿责任，赔偿以附件A所载明的该项服务内容对应之服务费为限。若因甲方原因造成工作的延误，将由甲方承担相应的损失。\n3、乙方的服务承诺：  1） 乙方接到甲方通过电话、信函传真、电子邮件、网甲乙双方本着相互信任，真诚合作的原则，经双方友好协商，就乙方为甲方 提供特定服务达成一致意见，特签订本合同(包括本合同附件A)。\n服务内容\n1、乙方同意向甲方提供附于本合同并作为本合同一部分的附件A所列的特定服务。 的内容、时限、衡量成果的标准见附件A。\n2、如果乙方在工作中因自身过错而发生任何错误或遗漏，乙方应无条件更正，而不另外收费，并对因此而对甲方造成的损失承担赔偿责任，赔偿以附件A所载明的该项服务内容对应之服务费为限。若因甲方原因造成工作的延误，将由甲方承担相应的损失。\n3、乙方的服务承诺：  1） 乙方接到甲方通过电话、信函传真、电子邮件、网甲乙双方本着相互信任，真诚合作的原则，经双方友好协商，就乙方为甲方 提供特定服务达成一致意见，特签订本合同(包括本合同附件A)。\n服务内容\n1、乙方同意向甲方提供附于本合同并作为本合同一部分的附件A所列的特定服务。 的内容、时限、衡量成果的标准见附件A。\n2、如果乙方在工作中因自身过错而发生任何错误或遗漏，乙方应无条件更正，而不另外收费，并对因此而对甲方造成的损失承担赔偿责任，赔偿以附件A所载明的该项服务内容对应之服务费为限。若因甲方原因造成工作的延误，将由甲方承担相应的损失。\n3、乙方的服务承诺：  1） 乙方接到甲方通过电话、信函传真、电子邮件、网甲乙双方本着相互信任，真诚合作的原则，经双方友好协商，就乙方为甲方 提供特定服务达成一致意见，特签订本合同(包括本合同附件A)。\n服务内容\n1、乙方同意向甲方提供附于本合同并作为本合同一部分的附件A所列的特定服务。 的内容、时限、衡量成果的标准见附件A。\n2、如果乙方在工作中因自身过错而发生任何错误或遗漏，乙方应无条件更正，而不另外收费，并对因此而对甲方造成的损失承担赔偿责任，赔偿以附件A所载明的该项服务内容对应之服务费为限。若因甲方原因造成工作的延误，将由甲方承担相应的损失。\n3、乙方的服务承诺：  1） 乙方接到甲方通过电话、信函传真、电子邮件、网甲乙双方本着相互信任，真诚合作的原则，经双方友好协商，就乙方为甲方 提供特定服务达成一致意见，特签订本合同(包括本合同附件A)。\n服务内容\n1、乙方同意向甲方提供附于本合同并作为本合同一部分的附件A所列的特定服务。 的内容、时限、衡量成果的标准见附件A。\n2、如果乙方在工作中因自身过错而发生任何错误或遗漏，乙方应无条件更正，而不另外收费，并对因此而对甲方造成的损失承担赔偿责任，赔偿以附件A所载明的该项服务内容对应之服务费为限。若因甲方原因造成工作的延误，将由甲方承担相应的损失。\n3、乙方的服务承诺：  1） 乙方接到甲方通过电话、信函传真、电子邮件、网甲乙双方本着相互信任，真诚合作的原则，经双方友好协商，就乙方为甲方 提供特定服务达成一致意见，特签订本合同(包括本合同附件A)。\n服务内容\n1、乙方同意向甲方提供附于本合同并作为本合同一部分的附件A所列的特定服务。 的内容、时限、衡量成果的标准见附件A。\n2、如果乙方在工作中因自身过错而发生任何错误或遗漏，乙方应无条件更正，而不另外收费，并对因此而对甲方造成的损失承担赔偿责任，赔偿以附件A所载明的该项服务内容对应之服务费为限。若因甲方原因造成工作的延误，将由甲方承担相应的损失。\n3、乙方的服务承诺：  1） 乙方接到甲方通过电话、信函传真、电子邮件、网甲乙双方本着相互信任，真诚合作的原则，经双方友好协商，就乙方为甲方 提供特定服务达成一致意见，特签订本合同(包括本合同附件A)。\n服务内容\n1、乙方同意向甲方提供附于本合同并作为本合同一部分的附件A所列的特定服务。 的内容、时限、衡量成果的标准见附件A。\n2、如果乙方在工作中因自身过错而发生任何错误或遗漏，乙方应无条件更正，而不另外收费，并对因此而对甲方造成的损失承担赔偿责任，赔偿以附件A所载明的该项服务内容对应之服务费为限。若因甲方原因造成工作的延误，将由甲方承担相应的损失。\n3、乙方的服务承诺：  1） 乙方接到甲方通过电话、信函传真、电子邮件、网甲乙双方本着相互信任，真诚合作的原则，经双方友好协商，就乙方为甲方 提供特定服务达成一致意见，特签订本合同(包括本合同附件A)。\n服务内容\n1、乙方同意向甲方提供附于本合同并作为本合同一部分的附件A所列的特定服务。 的内容、时限、衡量成果的标准见附件A。\n2、如果乙方在工作中因自身过错而发生任何错误或遗漏，乙方应无条件更正，而不另外收费，并对因此而对甲方造成的损失承担赔偿责任，赔偿以附件A所载明的该项服务内容对应之服务费为限。若因甲方原因造成工作的延误，将由甲方承担相应的损失。\n3、乙方的服务承诺：  1） 乙方接到甲方通过电话、信函传真、电子邮件、网甲乙双方本着相互信任，真诚合作的原则，经双方友好协商，就乙方为甲方 提供特定服务达成一致意见，特签订本合同(包括本合同附件A)。\n服务内容\n1、乙方同意向甲方提供附于本合同并作为本合同一部分的附件A所列的特定服务。 的内容、时限、衡量成果的标准见附件A。\n2、如果乙方在工作中因自身过错而发生任何错误或遗漏，乙方应无条件更正，而不另外收费，并对因此而对甲方造成的损失承担赔偿责任，赔偿以附件A所载明的该项服务内容对应之服务费为限。若因甲方原因造成工作的延误，将由甲方承担相应的损失。\n3、乙方的服务承诺：  1） 乙方接到甲方通过电话、信函传真、电子邮件、网甲乙双方本着相互信任，真诚合作的原则，经双方友好协商，就乙方为甲方 提供特定服务达成一致意见，特签订本合同(包括本合同附件A)。\n服务内容\n1、乙方同意向甲方提供附于本合同并作为本合同一部分的附件A所列的特定服务。 的内容、时限、衡量成果的标准见附件A。\n2、如果乙方在工作中因自身过错而发生任何错误或遗漏，乙方应无条件更正，而不另外收费，并对因此而对甲方造成的损失承担赔偿责任，赔偿以附件A所载明的该项服务内容对应之服务费为限。若因甲方原因造成工作的延误，将由甲方承担相应的损失。\n3、乙方的服务承诺：  1） 乙方接到甲方通过电话、信函传真、电子邮件、网甲乙双方本着相互信任，真诚合作的原则，经双方友好协商，就乙方为甲方 提供特定服务达成一致意见，特签订本合同(包括本合同附件A)。\n服务内容\n1、乙方同意向甲方提供附于本合同并作为本合同一部分的附件A所列的特定服务。 的内容、时限、衡量成果的标准见附件A。\n2、如果乙方在工作中因自身过错而发生任何错误或遗漏，乙方应无条件更正，而不另外收费，并对因此而对甲方造成的损失承担赔偿责任，赔偿以附件A所载明的该项服务内容对应之服务费为限。若因甲方原因造成工作的延误，将由甲方承担相应的损失。\n3、乙方的服务承诺：  1） 乙方接到甲方通过电话、信函传真、电子邮件、网甲乙双方本着相互信任，真诚合作的原则，经双方友好协商，就乙方为甲方 提供特定服务达成一致意见，特签订本合同(包括本合同附件A)。\n服务内容\n1、乙方同意向甲方提供附于本合同并作为本合同一部分的附件A所列的特定服务。 的内容、时限、衡量成果的标准见附件A。\n2、如果乙方在工作中因自身过错而发生任何错误或遗漏，乙方应无条件更正，而不另外收费，并对因此而对甲方造成的损失承担赔偿责任，赔偿以附件A所载明的该项服务内容对应之服务费为限。若因甲方原因造成工作的延误，将由甲方承担相应的损失。\n3、乙方的服务承诺：  1） 乙方接到甲方通过电话、信函传真、电子邮件、网甲乙双方本着相互信任，真诚合作的原则，经双方友好协商，就乙方为甲方 提供特定服务达成一致意见，特签订本合同(包括本合同附件A)。\n服务内容\n1、乙方同意向甲方提供附于本合同并作为本合同一部分的附件A所列的特定服务。 的内容、时限、衡量成果的标准见附件A。\n2、如果乙方在工作中因自身过错而发生任何错误或遗漏，乙方应无条件更正，而不另外收费，并对因此而对甲方造成的损失承担赔偿责任，赔偿以附件A所载明的该项服务内容对应之服务费为限。若因甲方原因造成工作的延误，将由甲方承担相应的损失。\n3、乙方的服务承诺：  1） 乙方接到甲方通过电话、信函传真、电子邮件、网甲乙双方本着相互信任，真诚合作的原则，经双方友好协商，就乙方为甲方 提供特定服务达成一致意见，特签订本合同(包括本合同附件A)。\n服务内容\n1、乙方同意向甲方提供附于本合同并作为本合同一部分的附件A所列的特定服务。 的内容、时限、衡量成果的标准见附件A。\n2、如果乙方在工作中因自身过错而发生任何错误或遗漏，乙方应无条件更正，而不另外收费，并对因此而对甲方造成的损失承担赔偿责任，赔偿以附件A所载明的该项服务内容对应之服务费为限。若因甲方原因造成工作的延误，将由甲方承担相应的损失。\n3、乙方的服务承诺：  1） 乙方接到甲方通过电话、信函传真、电子邮件、网甲乙双方本着相互信任，真诚合作的原则，经双方友好协商，就乙方为甲方 提供特定服务达成一致意见，特签订本合同(包括本合同附件A)。\n服务内容\n1、乙方同意向甲方提供附于本合同并作为本合同一部分的附件A所列的特定服务。 的内容、时限、衡量成果的标准见附件A。\n2、如果乙方在工作中因自身过错而发生任何错误或遗漏，乙方应无条件更正，而不另外收费，并对因此而对甲方造成的损失承担赔偿责任，赔偿以附件A所载明的该项服务内容对应之服务费为限。若因甲方原因造成工作的延误，将由甲方承担相应的损失。\n3、乙方的服务承诺：  1） 乙方接到甲方通过电话、信函传真、电子邮件、网甲乙双方本着相互信任，真诚合作的原则，经双方友好协商，就乙方为甲方 提供特定服务达成一致意见，特签订本合同(包括本合同附件A)。\n服务内容\n1、乙方同意向甲方提供附于本合同并作为本合同一部分的附件A所列的特定服务。 的内容、时限、衡量成果的标准见附件A。\n2、如果乙方在工作中因自身过错而发生任何错误或遗漏，乙方应无条件更正，而不另外收费，并对因此而对甲方造成的损失承担赔偿责任，赔偿以附件A所载明的该项服务内容对应之服务费为限。若因甲方原因造成工作的延误，将由甲方承担相应的损失。\n3、乙方的服务承诺：  1） 乙方接到甲方通过电话、信函传真、电子邮件、网甲乙双方本着相互信任，真诚合作的原则，经双方友好协商，就乙方为甲方 提供特定服务达成一致意见，特签订本合同(包括本合同附件A)。\n服务内容\n1、乙方同意向甲方提供附于本合同并作为本合同一部分的附件A所列的特定服务。 的内容、时限、衡量成果的标准见附件A。\n2、如果乙方在工作中因自身过错而发生任何错误或遗漏，乙方应无条件更正，而不另外收费，并对因此而对甲方造成的损失承担赔偿责任，赔偿以附件A所载明的该项服务内容对应之服务费为限。若因甲方原因造成工作的延误，将由甲方承担相应的损失。\n3、乙方的服务承诺：  1） 乙方接到甲方通过电话、信函传真、电子邮件、网甲乙双方本着相互信任，真诚合作的原则，经双方友好协商，就乙方为甲方 提供特定服务达成一致意见，特签订本合同(包括本合同附件A)。\n服务内容\n1、乙方同意向甲方提供附于本合同并作为本合同一部分的附件A所列的特定服务。 的内容、时限、衡量成果的标准见附件A。\n2、如果乙方在工作中因自身过错而发生任何错误或遗漏，乙方应无条件更正，而不另外收费，并对因此而对甲方造成的损失承担赔偿责任，赔偿以附件A所载明的该项服务内容对应之服务费为限。若因甲方原因造成工作的延误，将由甲方承担相应的损失。\n3、乙方的服务承诺：  1） 乙方接到甲方通过电话、信函传真、电子邮件、网甲乙双方本着相互信任，真诚合作的原则，经双方友好协商，就乙方为甲方 提供特定服务达成一致意见，特签订本合同(包括本合同附件A)。\n服务内容\n1、乙方同意向甲方提供附于本合同并作为本合同一部分的附件A所列的特定服务。 的内容、时限、衡量成果的标准见附件A。\n2、如果乙方在工作中因自身过错而发生任何错误或遗漏，乙方应无条件更正，而不另外收费，并对因此而对甲方造成的损失承担赔偿责任，赔偿以附件A所载明的该项服务内容对应之服务费为限。若因甲方原因造成工作的延误，将由甲方承担相应的损失。\n3、乙方的服务承诺：  1） 乙方接到甲方通过电话、信函传真、电子邮件、网甲乙双方本着相互信任，真诚合作的原则，经双方友好协商，就乙方为甲方 提供特定服务达成一致意见，特签订本合同(包括本合同附件A)。\n服务内容\n1、乙方同意向甲方提供附于本合同并作为本合同一部分的附件A所列的特定服务。 的内容、时限、衡量成果的标准见附件A。\n2、如果乙方在工作中因自身过错而发生任何错误或遗漏，乙方应无条件更正，而不另外收费，并对因此而对甲方造成的损失承担赔偿责任，赔偿以附件A所载明的该项服务内容对应之服务费为限。若因甲方原因造成工作的延误，将由甲方承担相应的损失。\n3、乙方的服务承诺：  1） 乙方接到甲方通过电话、信函传真、电子邮件、网 end";
}


@end
