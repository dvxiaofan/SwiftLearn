//
//  XFHttpTool.swift
//  16-闭包使用
//
//  Created by xiaofans on 16/8/4.
//  Copyright © 2016年 xiaofan. All rights reserved.
//

import UIKit


class XFHttpTool: NSObject {
    func loadData(finishedCallBack: @escaping (_ jsonData: String, _ age: Int) -> ()) {
        DispatchQueue.global().async {
            print("loda data\(Thread.current)")
        }
        
        DispatchQueue.main.async {
            print("main \(Thread.current)")
            
            finishedCallBack("lajf98", 34)
        }
    }
}


//class XFHttpTool: NSObject {
//    // 闭包属性
//    var callBack : ((_ jsonData : String) -> ())?
//    
//    // 闭包类型  (参数列表) -> (返回值类型)
//    func loadData(_ callBack : @escaping (_ jsonData : String) -> ()) {
//        
//        self.callBack = callBack
//        
//        DispatchQueue.global(priority: 0).async { () -> Void in
//            print("发送网络请求:\(Thread.current)")
//            
//            DispatchQueue.main.async(execute: { () -> Void in
//                print("获得数据, 并进行回调:\(Thread.current)")
//                
//                callBack(jsonData: "jsonData 数据")
//            })
//        }
//    }
//
//}
