//
//  ViewController.m
//  WebViewDemo
//
//  Created by Jordan Nelson on 3/17/15.
//  Copyright (c) 2015 Jordan Nelson. All rights reserved.
//

#import "ViewController.h"
#import <WebKit/WebKit.h>

@interface ViewController ()

@property (strong,nonatomic) WKWebView *webView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.webView = [[WKWebView alloc]initWithFrame:self.view.frame];

    [self.view addSubview:self.webView];
    [self configureView];
}

- (void)configureView {
    
    NSURL *url = [NSURL URLWithString:@"http://espn.go.com/"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:request];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    
}



@end
