//: Playground - noun: a place where people can play

import UIKit

// 使用数组保存一组数据
let array = ["xiaoming", 18, 1.6]
array[0]

// 使用字典保存一组数据
let dict = ["name" : "xiaoming", "age" : 18]
dict["name"]

// 使用元组   元组一般用于作为方法的返回值
let info = ("xiaoming", 18, 1.76)
info.0
info.2

// 可以给每一个元素起别名 (常用方法)
let info2 = (name : "xiaofan", age : 19, height : 1.88)
info2.name
info2.age

// 元组中元素的别名就是元组的名称
let (name, age, height) = ("xiaoming", 17, 1.7)
name
age
height


