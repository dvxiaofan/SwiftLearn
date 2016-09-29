//: Playground - noun: a place where people can play

import UIKit


/**
*  属性监听器
*/

class Person: NSObject {
    
    var name : String? {
        //willSet {   // 属性即将改变
            ////print("111")
            ////print(name)
            
            //print(newValue)
        //}
        didSet {    // 属性已经改变
            //print("222")
            print(name)
            
            print(oldValue)
        }
    }
}

let p = Person()
p.name = "xiaoming"
p.name = "xiaofan"

















