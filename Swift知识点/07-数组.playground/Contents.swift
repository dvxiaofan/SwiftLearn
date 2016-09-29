//: Playground - noun: a place where people can play

import UIKit

// 定义数组
let array = ["one", "two", "three", "four"]

// 定义不可变数据
//var arrayM = Array<String>()
var arrayM = [String]()

// 对可变数组的操作
// 添加
arrayM.append("xiaoming")
arrayM.append("love")
arrayM.append("xiaofan")

// 删除一个
arrayM.removeAtIndex(1)
arrayM

//修改
arrayM[0] = "hello"
arrayM

//取出某一个
arrayM[1]


// 数组的遍历
for i in 0..<array.count {
    print(array[i])
}

for name in array {
    print(name)
}

// 遍历前两个元素
for i in 0..<2 {
    print(array[i])
}

for name in array[0..<2] {
    print(name)
}


// 数组的合并 -- 相同类型的数据才可以直接相加合并
let result = arrayM + array












