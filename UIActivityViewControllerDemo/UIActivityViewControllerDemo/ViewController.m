//
//  ViewController.m
//  UIActivityViewControllerDemo
//
//  Created by ocarol on 16/8/5.
//  Copyright © 2016年 ocarol. All rights reserved.
//

#import "ViewController.h"
#import "shareData.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)share:(id)sender {
    
    NSString *path1 = [[NSBundle mainBundle] pathForResource:@"ios - Not able to share Docx in form of NSDATA using UIActivityViewController - Stack Overflow" ofType:@"xlsx"];
    NSURL *url1 = [NSURL fileURLWithPath:path1];
    NSData *data1 = [NSData dataWithContentsOfFile:path1];
    shareData *share1 = [shareData new];
    share1.data = data1;
    share1.url = url1;
    
    NSString *path2 = [[NSBundle mainBundle] pathForResource:@"ios - Not able to share Docx in form of NSDATA using UIActivityViewController - Stack Overflow" ofType:@"docx"];
    NSURL *url2 = [NSURL fileURLWithPath:path2];
    NSData *data2 = [NSData dataWithContentsOfFile:path2];
    shareData *share2 = [shareData new];
    share2.data = data2;
    share2.url = url2;
    
    NSString *path3 = [[NSBundle mainBundle] pathForResource:@"c13e55f0be2d3287c2e9202b95ba0a18" ofType:@"gif"];
    NSURL *url3 = [NSURL fileURLWithPath:path3];
    NSData *data3 = [NSData dataWithContentsOfFile:path3];
    shareData *share3 = [shareData new];
    share3.data = data3;
    share3.url = url3;
    
    UIActivityViewController *activityViewController = [[UIActivityViewController alloc] initWithActivityItems:@[share1,share2,share3] applicationActivities:nil];
    [self presentViewController:activityViewController animated:YES completion:nil];
    
}

@end
