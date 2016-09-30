//
//  ViewController.swift
//  16-闭包使用
//
//  Created by xiaofans on 16/8/4.
//  Copyright © 2016年 xiaofan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    
    
    
    
    
//    var httpTool : XFHttpTool = XFHttpTool()
    
    /*
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        
    
        /*
        weakSelf?.view
        如果前面的可选类型, 没有值, 后面所有的代码都不会执行
        如果前面的可选类型, 有值, 系统会自动将 weakSelf 进行解包, 并且使用 weakSelf
        */
        
        // 解决循环引用的第一种方式:
        //weak var weakSelf = self
        
        //httpTool.loadData { (jsonData) -> () in
            //print("拿到的数据是:\(jsonData)")
            
            //weakSelf!.view.backgroundColor = UIColor.blueColor()
        //}
        
        // 解决循环引用的方式二:
        //httpTool.loadData {[weak self] (jsonData) -> () in
            //print("拿到的数据是:\(jsonData)")
            
            //self?.view.backgroundColor = UIColor.blueColor()
        //}
        
        // 解决循环引用的方式三: 推荐该种方式
        //httpTool.loadData {[unowned self] (jsonData) -> () in
            //print("拿到的数据是:\(jsonData)")
            
            //self.view.backgroundColor = UIColor.blueColor()
        //}
        
        // 尾随闭包: 如果闭包作为方法的最后一个参数, 那么闭包可以将()省略掉
        // 普通写法
//        httpTool.loadData (finishedCallBack: {[unowned self] (jsonData) -> () in
//            print("拿到的数据是:\(jsonData)")
//            
//            self.view.backgroundColor = UIColor.blue
//        })
//        
//        // 尾随闭包写法一:
//        httpTool.loadData (){[unowned self] (jsonData) -> () in
//            print("拿到的数据是:\(jsonData)")
//            
//            self.view.backgroundColor = UIColor.blue
//            }
//        
//        
//        // 尾随闭包写法二:
//        httpTool.loadData {[unowned self] (jsonData) -> () in
//            print("拿到的数据是:\(jsonData)")
//            
//            self.view.backgroundColor = UIColor.blue
//            }
//        
//        
//    }
//    
//    // 相当于 oc 中的 dealloc 方法
//    deinit {
//        print("ViewController--销毁")
    }
 */

}








