//: Playground - noun: a place where people can play

import UIKit


// 如果重写 setValue(value: AnyObject?, forUndefinedKey key: , 那么字典中没有的字段可以在类中没有对应的属性
//class Person : NSObject {
    //var age : Int = 0
    
    //// override 重写, 如果写的某一个方法是对父类的方法进行的重写, 那么必须在该方法前加上override
    ////override func setValue(value: AnyObject?, forUndefinedKey key: String) {
        
    ////}
//}

//let p = Person()

////p.age = 15
//p.setValuesForKeysWithDictionary(["age" : 16])

//print("\(p.age)")


/**
*  类的存储属性 -- 存储常量和变量
*/


class Student: NSObject {
    // 定义存储属性
    var age : Int = 0
    var name :String?
    
    var mathScore : Double = 0.0
    var yuwenScore : Double = 0.0
    
    // 最好定义为一个计算属性-- 通过别的方式计算结果的属性
    var aveScore : Double {
        return (mathScore + yuwenScore) * 0.5
    }
    
    // 方法
    //func getAveScore() -> Double {
        //// 如果是使用当前对象的某一个属性或者是调用当前对象的某一个方法, 不需要加 self
        //return (mathScore + yuwenScore) * 0.5
    //}
    
    // 定义类属性 -- 和整个类相关的属性, 而且是通过类名进行访问的
    static var courseCount : Int = 0
    
    
    
}

// 给累属性进行赋值
Student.courseCount = 2

// 常见对象
let stu = Student()

// 给对象赋值
stu.age = 12
stu.name = "wangwang"

stu.mathScore = 60
stu.yuwenScore = 90.4

print(stu.age)

if let name = stu.name {
    print(name)
}

//let aveScore = stu.getAveScore()
let aveScore = stu.aveScore














