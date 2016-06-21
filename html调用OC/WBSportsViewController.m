//
//  WBSportsViewController.m
//  firstconcern
//
//  Created by 周焕强 on 16/6/14.
//  Copyright © 2016年 nbnip. All rights reserved.
//

#import "WBSportsViewController.h"



@interface WBSportsViewController ()

@end

@implementation WBSportsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"体育";
    
    UIWebView *webView = [[UIWebView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:webView];
    
    NSURL *url = [NSURL URLWithString:@"http://www.lesports.com"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [webView loadRequest:request];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
