//
//  ViewController.m
//  MainProject
//
//  Created by yankang on 2019/8/27.
//  Copyright © 2019 yankang. All rights reserved.
//

#import "AViewController.h"
#import <B_Category/CTMediator+B.h>
@interface AViewController ()

@property(nonatomic,strong)UIButton  *button;

@end

@implementation AViewController



#pragma mark ---- life cycle----

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.button];
    
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    
}


- (void)viewWillLayoutSubviews{
    [super viewWillLayoutSubviews];
    
    self.button.frame = CGRectMake(0, 0, 160, 60);
    self.button.center = self.view.center;
    
}





#pragma mark ---event private methods---
- (void)buttonPressed:(UIButton *)button {
    
   UIViewController *b_viewController = [[CTMediator sharedInstance]B_viewControllerWithContentText:@"Hello World"];
    [self.navigationController pushViewController:b_viewController animated:YES];
}



#pragma mark ---getter setter---
- (UIButton *)button {
    if (_button == nil) {
        _button = [UIButton buttonWithType:UIButtonTypeCustom];
        _button.backgroundColor = [UIColor grayColor];
        [_button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_button setTitle:@"push to BViewController" forState:UIControlStateNormal];
        [_button addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _button;
}







@end

