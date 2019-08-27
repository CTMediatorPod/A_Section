//
//  Target_A.m
//  A_Section
//
//  Created by yankang on 2019/8/27.
//  Copyright © 2019 yankang. All rights reserved.
//


#import "Target_A.h"
#import "AViewController.h"


@implementation Target_A

- (UIViewController *)Action_viewController:(NSDictionary *)params {
    AViewController *viewController = [[AViewController alloc] init];
    return viewController;
}

@end
