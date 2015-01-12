//
//  ViewController.h
//  WebView
//
//  Created by Vladimir on 12.01.15.
//  Copyright (c) 2015 Vladimir. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
<UIWebViewDelegate>

@property(nonatomic, weak) IBOutlet UIWebView* webView;
@property(nonatomic, weak) IBOutlet UIBarButtonItem* back;
@property(nonatomic, weak) IBOutlet UIBarButtonItem* stop;
@property(nonatomic, weak) IBOutlet UIBarButtonItem* load;
@property(nonatomic, weak) IBOutlet UIBarButtonItem* next;


@end

