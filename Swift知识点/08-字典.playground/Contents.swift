//: Playground - noun: a place where people can play

import UIKit

//定义字典
let dicOne = ["name" : "xiaoming", "age" : 19]
print(dicOne["age"])

//对可变字典的操作
//var dicM = [String : NSObject]()
var dicM = [String : AnyObject]()

// 增加
dicM["name"] = "xiaoming"
dicM["age"] = 18
dicM["height"] = 1.66
dicM

// 删除
//dicM.removeValueForKey("height")
//dicM

// 修改
dicM["age"] = 17
dicM

// 获取一个元素
dicM["name"]


//遍历字典
for key in dicM.keys {
    print(key)
}

for value in dicM.values {
    print(value)
}

for (key, value) in dicM {
    print(key, value)
}



//合并字典 -- 即使类型一致, 也不能相加进行合并
var dic1 = ["name" : "xiaofan", "age" : 22]
let dic2 = ["height" : "1.88", "phone" : 1233]

// 通过遍历方式合并
for (key, value) in dic2 {
    dic1[key] = value
}

dic1













