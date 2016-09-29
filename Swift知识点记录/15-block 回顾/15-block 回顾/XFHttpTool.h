//
//  XFHttpTool.h
//  15-block 回顾
//
//  Created by xiaofans on 16/8/4.
//  Copyright © 2016年 xiaofan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XFHttpTool : NSObject

- (void)loadData:(void(^)(NSString *jsonData))callBack;

@end
