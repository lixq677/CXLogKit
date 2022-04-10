//
//  ViewController.m
//  CXLogDemo
//
//  Created by 李笑清 on 2020/7/15.
//  Copyright © 2020 李笑清. All rights reserved.
//

#import "ViewController.h"
#import <CXLogKit/CXLogKit.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"TEST" forState:UIControlStateNormal];
    [btn setBackgroundColor:[UIColor redColor]];
    CGFloat w = CGRectGetWidth(self.view.frame);
    btn.frame = CGRectMake(0.5*w-100, 300, 200, 60);
    [btn addTarget:self action:@selector(testAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    
    

}

- (void)testAction:(id)sender{
        CXLogInfo(@"TEST!!!");
        CXLogDebug(@"TR");
    
}




@end

//void abc(){
//    NSBundle *bundle = [NSBundle bundleForClass:self.class];
//}
