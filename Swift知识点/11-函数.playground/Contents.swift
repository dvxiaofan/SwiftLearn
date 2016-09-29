//: Playground - noun: a place where people can play

import UIKit


// 1. 没有参数没有返回值
//func test1() -> Void {
    //print("iphone")
//}
//test1()

//func test2() {
    //print("xiaomi")
//}
//test2()

//// 2. 没有参数有返回值
//func test3() -> String {
    //return "helloxiaofan"
//}
//test3()

//// 3. 有参数没有返回值
//func callPhone(phoneNumber : String) {
    ////print("call xiaoming with \(phoneNumber)")
    //print("call xiaoming with" + phoneNumber)
//}
//callPhone("110")


// 4. 有参数有返回值
//func sum(num1 : Int, num2 : Int) -> Int {
    //return num1 + num2
//}
//sum(23, num2: 23)

/**
*  函数的使用注意
*/
//func sum(num1 num1 : Int, num2 : Int, num3 : Int) -> Int {
    //return num1 + num2 + num3
//}

////sum(10, num2: 20, num3: 30)
//sum(num1: 20, num2: 20, num3: 30)


/*
内部参数和外部参数
内部参数: 在函数内部可以看到的参数就是内部参数, 默认情况下所有的参数都是内部参数
外部参数: 在函数外部可以看到的参数就是外部参数, 默认情况下从第二个参数开始既是内部参数,也是外部参数

如果希望第一个参数也是外部参数, 可以在标识符前面给该参数添加一个别名
*/

// Swift 中的默认参数 -- 参数后面=一个默认值

//func makeCoffe(coffeName : String = "quechao") -> String {
    //return "make one cup \(coffeName)"
//}

//makeCoffe("natie")
//makeCoffe("kabuqinuo")
//makeCoffe()

// 可变参数
//func sum(num : Int...) -> Int {
    //var result = 0
    //for n in num {
        //result += n
    //}
    //return result
//}

//sum(10, 20, 20, 30, 30)


// 指针类型
var m = 10
var n = 30
//func swapNum(var m : Int, var n : Int) {
    //let tempNum = m
    //m = n
    //n = tempNum
//}

//swapNum(m, n: n)

//func swapNum(inout m : Int, inout n : Int) {
    //let temp = m
    //m = n
    //n = temp
//}

//swapNum(&m, n: &n)


//print("m:\(m), n:\(n)")


// 函数的嵌套使用

func test() {
    func demo() {
        print("demo")
    }
    print("test")
    demo()
}
test()




















