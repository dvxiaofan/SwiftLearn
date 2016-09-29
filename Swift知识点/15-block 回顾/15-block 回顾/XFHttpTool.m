//
//  XFHttpTool.m
//  15-block 回顾
//
//  Created by xiaofans on 16/8/4.
//  Copyright © 2016年 xiaofan. All rights reserved.
//

#import "XFHttpTool.h"


@interface XFHttpTool ()

@property (nonatomic, copy) void(^callBack)(NSString *name);

@end


@implementation XFHttpTool

- (void)loadData:(void (^)(NSString *))callBack {
    self.callBack = callBack;
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        NSLog(@"子线程下载数据:%@", [NSThread currentThread]);
        dispatch_async(dispatch_get_main_queue(), ^{
            NSLog(@"拿到数据,进行回调%@", [NSThread currentThread]);
            
            callBack(@"返回的json 数据");
        });
    });
}

@end
