//: Playground - noun: a place where people can play

import UIKit

/// 可以使用常量,  需要修改是再改为变量
let a : Int = 30    // 常量

var b : Double = 90.09 // 变量

b = 2.9

print(a)        // 打印
print(b)


let scores = [23, 45, 55, 65, 342, 90]
var result = 0
for sore in scores {
    if sore > 50 {
        result += 3
    } else {
        result += 1
    }
}
print(result)


