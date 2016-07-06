//
//  LSTabbarViewController.m
//  TestScroll
//
//  Created by Lost_souls on 16/7/6.
//  Copyright © 2016年 __lost_souls. All rights reserved.
//

#define kRGB(a,b,c)        [UIColor colorWithRed:a/255.0 green:b/255.0 blue:c/255.0 alpha:1.0]
#define kStoryboardMain(vc) [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:vc]



#import "LSTabbarViewController.h"
#import "IndexViewController.h"
#import "LSNavigationController.h"
#import "DiscoverViewController.h"

@interface LSTabbarViewController ()

@end

@implementation LSTabbarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setupControllers];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)setupControllers {
    
    IndexViewController *index = kStoryboardMain(@"IndexViewController");
    index.title = @"index";
    [self setupChildControllers:index tabBarImageName:@"tabbar_index" tabbarTitle:@"首页"];
    
    DiscoverViewController *discover = kStoryboardMain(@"DiscoverViewController");
    discover.title = @"discover";
    [self setupChildControllers:discover tabBarImageName:@"tabbar_my" tabbarTitle:@"发现"];
    
    
//    UIImage *image = [UIImage imageNamed:@"tabbarbg"];
//    [[UITabBar appearance] setBackgroundImage:image];
//    [[UITabBar appearance] setShadowImage:[[UIImage alloc] init]];
    
    [[UINavigationBar appearance] setTintColor:[UIColor grayColor]];
    [[UINavigationBar appearance] setBarTintColor:kRGB(245, 245, 245)];
    [[UINavigationBar appearance ] setTitleTextAttributes:@{NSForegroundColorAttributeName :kRGB(55, 55, 55)}];
}



- (void)setupChildControllers:(UIViewController *)control tabBarImageName:(NSString *)name tabbarTitle:(NSString *)barTitle{
    
    LSNavigationController *nav = [[LSNavigationController alloc] initWithRootViewController:control];
    nav.tabBarItem.image = [UIImage imageNamed:name];
    nav.tabBarItem.selectedImage = [UIImage imageNamed:[NSString stringWithFormat:@"%@_select", name]];
    //    control.title = title;
    nav.tabBarItem.title = barTitle;
    [self addChildViewController:nav];
    NSLog(@"vcs:%@",self.childViewControllers);
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
