//
//  ViewController.m
//  WebView
//
//  Created by Vladimir on 12.01.15.
//  Copyright (c) 2015 Vladimir. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.webView.scalesPageToFit = YES;
    self.webView.delegate = self;
    
//    NSString* localURL = [[NSBundle mainBundle] pathForResource:@"test.txt" ofType:@""];
//    NSURL* url = [NSURL URLWithString:@"http://google.com"];
//    NSURL* url = [NSURL fileURLWithPath:localURL isDirectory:NO];
//    NSURLRequest* request = [NSURLRequest requestWithURL:url];
//    [self.webView loadRequest:request];
    
    UIImage* image = [UIImage imageNamed:@"pic.jpg"];
    NSData* data = UIImagePNGRepresentation(image);
    [self.webView loadData:data MIMEType:@"image/jpeg" textEncodingName:@"UTF-8" baseURL:nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)updateButtons{
    self.next.enabled = self.webView.canGoBack;
    self.back.enabled = self.webView.canGoBack;
    self.stop.enabled = self.webView.loading;
}

-(void)webViewDidStartLoad:(UIWebView *)webView
{
    [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
    [self updateButtons];
}

-(void)webViewDidFinishLoad:(UIWebView *)webView{
    [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
    [self updateButtons];
}

-(void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
{
    [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
    [self updateButtons];
}


@end
