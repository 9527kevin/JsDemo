//
//  WBBaseViewController.m
//  firstconcern
//
//  Created by 周焕强 on 16/5/5.
//  Copyright © 2016年 nbnip. All rights reserved.
//

#import "WBBaseViewController.h"


@interface WBBaseViewController ()

@end

@implementation WBBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationController.interactivePopGestureRecognizer.delegate = (id)self;
    if ([self.navigationController respondsToSelector:@selector(interactivePopGestureRecognizer)]) {
        self.navigationController.interactivePopGestureRecognizer.enabled = YES;
    }
}


@end
