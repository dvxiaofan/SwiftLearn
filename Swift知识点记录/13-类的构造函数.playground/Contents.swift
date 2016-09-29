//: Playground - noun: a place where people can play

import UIKit

class Person: NSObject {
    var name : String?
    var age : Int = 0
    
    override init() {
        // 在构造函数中, 如果没有明确 super.init(), 那么系统会帮助调用
        //super.init()
        print("--------")
    }
    
    // 自定义构造函数
    init(name : String, age : Int) {
        self.name = name
        self.age = age
    }
    
    //init(dict : [String : AnyObject]) {
        //let tempName = dict["name"]
        ////name = dict["name"]
        //// as? 最终转成的是一个可选类型
        //name = tempName as? String
        
        //// as! 最终专程的是一个确定的类型
        ////let tempAge = dict["age"]
        ////age = tempAge as! Int
        
        //if let tempAge = dict["age"] as? Int {
            //age = tempAge
        //}
    //}
    init(dict : [String : AnyObject]) {
        super.init()
        
        setValuesForKeysWithDictionary(dict)
    }
    
    override func setValuesForKeysWithDictionary(keyedValues: [String : AnyObject]) {
        
    }
}


let p1 = Person()
let p2 = Person(name: "xiaoming", age: 18)

if let name = p2.name {
    print(name)
}
print(p2.age)

let p3 = Person(dict: ["name" : "xiaofan", "age" : 17])

if let name = p3.name {
    print(name)
}
print(p3.name)
print(p3.age)


//let p4 = Person().setValuesForKeysWithDictionary(["name" : "xioaming", "age" : 18])
//print(p4.name)
//print(p4.age)












