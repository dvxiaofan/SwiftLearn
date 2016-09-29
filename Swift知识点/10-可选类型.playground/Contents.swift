//: Playground - noun: a place where people can play

import UIKit

// Swift 中规定:对象中的任何属性在创建对象时, 都必须有明确的初始化值

// 定义可选类型方法
// 1. 常规方式(不常用)
//var name : Optional<String> = nil
//name = "xiaoming"


// 2. 语法糖 (常用)
var name : String? = nil

// 给可选类型赋值
name = "xiaofan"

// 取出可选类型中的值  -- 强制解包(注意:强制解包是非常危险的操作, 如果可选类型为 nil, 强制解包会崩溃)
//print(name!)

// 在强制解包前先判断可选类型是否为 nil
//if name != nil {
    //print(name!)
//} else {
    //print("no")
//}

// 可选绑定 -- 有两步操作 
// 1. 判断name 是否有值, 如果没有值, 直接不执行大括号内代码. 
// 2. 如果有值, 系统会自动将 name 解包, 并且解包后的结果赋值给新定义的变量
// 写法一:
//if let tempName = name {
    //print(tempName)
//}

// 写法 二:
if let name = name {
    print(name)
} else {
    print("nnnn")
}


/**
*  可选类型的应用场景 -- 通过一个字符串创建一个 NSURL 对象
*/
let url = NSURL(string: "http://devxiaofan.com")

// 根据 URL 创建 NSURLRequest 对象
if let url = url {
    let request = NSURLRequest(URL: url)
}

















