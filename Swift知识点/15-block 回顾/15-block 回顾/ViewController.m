//
//  ViewController.m
//  15-block 回顾
//
//  Created by xiaofans on 16/8/4.
//  Copyright © 2016年 xiaofan. All rights reserved.
//

#import "ViewController.h"
#import "XFHttpTool.h"

@interface ViewController ()

@property (nonatomic, strong) XFHttpTool *httpTool;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.httpTool = [[XFHttpTool alloc] init];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    __weak ViewController *weakSelf = self;
    [self.httpTool loadData:^(NSString *jsonData) {
        //NSLog(@"在 viewController拿到数据%@", jsonData);
        weakSelf.view.backgroundColor = [UIColor redColor];
    }];
    
}

- (void)dealloc {
    NSLog(@"%s", __func__);
}

@end














