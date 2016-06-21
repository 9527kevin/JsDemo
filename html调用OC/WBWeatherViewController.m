//
//  WBWeatherViewController.m
//  firstconcern
//
//  Created by 周焕强 on 16/6/14.
//  Copyright © 2016年 nbnip. All rights reserved.
//

#import "WBWeatherViewController.h"

@interface WBWeatherViewController ()

@end

@implementation WBWeatherViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"天气";
    
    UIWebView *webView = [[UIWebView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:webView];
    
    NSURL *url = [NSURL URLWithString:@"http://tianqi.2345.com/hangzhou/58457.htm"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [webView loadRequest:request];
    
}



@end
