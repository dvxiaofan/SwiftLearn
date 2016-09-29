//
//  XFHttpTool.swift
//  16-闭包使用
//
//  Created by xiaofans on 16/8/4.
//  Copyright © 2016年 xiaofan. All rights reserved.
//

import UIKit

class XFHttpTool: NSObject {
    // 闭包属性
    var callBack : ((jsonData : String) -> ())?
    
    // 闭包类型  (参数列表) -> (返回值类型)
    func loadData(callBack : (jsonData : String) -> ()) {
        
        self.callBack = callBack
        
        dispatch_async(dispatch_get_global_queue(0, 0)) { () -> Void in
            print("发送网络请求:\(NSThread.currentThread())")
            
            dispatch_async(dispatch_get_main_queue(), { () -> Void in
                print("获得数据, 并进行回调:\(NSThread.currentThread())")
                
                callBack(jsonData: "jsonData 数据")
            })
        }
    }

}
