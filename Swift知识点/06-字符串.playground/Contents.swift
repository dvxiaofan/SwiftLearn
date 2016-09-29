//: Playground - noun: a place where people can play

import UIKit

//// 定义字符串
//let str = "xiaofan"

//// 遍历字符串
//for c in str.characters {
    //print(c)
//}

// 字符的拼接
//let str1 = "xiao"
//let str2 = "ming"

//let str3 = str1 + str2

//// 字符串和其他标识符之间的拼接
//let name = "xiaoming"
//let age = 18
//let height = 1.67

//let info = "my name is \(name), my age is \(age), my height is \(height)"

//// 拼接字符串时, 字符串的格式化
//let min = 2
//let second = 35

//let timeStr = String(format: "%02d:%02d", arguments: [min, second])


//z 字符串的截取
let urlStr = "www.devxiaofan.com"

// 将 String 转成 NSString 再截取
let header = (urlStr as NSString).substringToIndex(3)
let middle = (urlStr as NSString).substringWithRange(NSMakeRange(4, 10))
let footer = (urlStr as NSString).substringFromIndex(15)













