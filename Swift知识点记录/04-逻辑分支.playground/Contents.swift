//: Playground - noun: a place where people can play

import UIKit

// if 后面的()可以省略
// 判断句不再有非0即真, 判断句必须要有明确的真假(Bool-->true/false)

//let a = -10

//if a > 0 {
    //print("a > 0")
//} else {
    //print("a < 0")
//}


//let source = 98

//if source < 0 || source > 100 {
    //print("不合理分数")
//} else if source < 60 {
    //print("不及格")
//} else if source < 80 {
    //print("及格")
//} else if source < 90{
    //print("良好")
//} else if source <= 100 {
    //print("优秀")
//}

// 三目运算符

//let m = 30
//let n = 60

//let result = m > n ? m : n


// swift 新增语法  guard  (必须在函数中使用)
// 它和 if 语句非常类似, 它设计的目的是提高程序的可读性
// guard 必须带有 else 语句 语法如下
// 1. 当条件表达式为 true 的时候跳过 else 语句中的内容 , 执行语句组内容
// 2. 条件表达式为 false 时候执行 else 语句中的内容, 跳转语句一般是 return , break, continue 和 throw

/*
guard 条件表达式 else {
    
}
语句组
*/

//let age = 28

//func online(age : Int) {
    //guard age >= 18 else {
        //print("nononononon")
        //return
    //}
    
    //print("yes")
//}

//online(age)

// switch 

//let sex = 3

//switch sex {
//case 0:
    //print("nnn")
//case 1:
    //print("vvvv")
//default:
    //print("hahahha")
//}

// case 后面可以跟多个条件
//switch sex {
//case 0, 1:
    //print("ren")
//default:
    //print("hahahha")
//}


// 可以判断浮点型

//let ppi = 3.1415

//switch ppi {
//case 3.1415:
    //print("ppi");
//default:
    //print("notppi")
//}


// 可以判断字符串
//let m = 20
//let n = 30

//let opration = "+"
//var result = 0

//switch opration {
    //case "+":
        //result = m + n
    //case "-":
        //result = m - n
    //default:
        //print("nnn")
//}


// 可以判断区间
let score = 69

switch score {
case 0..<60:
    print("bububujige")
case 60..<80:
    print("jige")
case 80..<90:
    print("lianghao")
case 90...100:
    print("youxiu")
default:
    print("hhaha")
}

















