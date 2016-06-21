//
//  ViewController.m
//  html调用OC
//
//  Created by 周焕强 on 16/6/21.
//  Copyright © 2016年 zhq. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIWebViewDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = @"首页";
    
    NSURL *url = [NSURL URLWithString:@"http://htmlpreview.github.com/?https://github.com/zhouhuanqiang/JsDemo/resource/index.html"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:request];

    
}

-(BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType{
    
    NSString *str = request.URL.absoluteString;
    NSRange range = [str rangeOfString:@"zhq://"];
    if (range.location != NSNotFound) {
        NSString *class = [str substringFromIndex:range.location + range.length];
        [self.navigationController pushViewController:[[NSClassFromString(class) alloc] init] animated:YES];
    }
    
    return YES;
}

@end
