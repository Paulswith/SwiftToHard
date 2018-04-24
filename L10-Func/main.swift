//
//  main.swift
//  L10-Func
//
//  Created by dobby on 2018/4/24.
//  Copyright © 2018 Dobby. All rights reserved.
//

import Foundation

// 无参数 无返回值

func getNone(){
    print("无任何参数 | 返回值")
}
// 有返回值无参数
func getNone1() -> String {
    return "string"
}
// 有参数无返回值
func getNone2(age:Int) {
    print("芳龄:\(age)")
}
// 有返回值 有参数
func getNone3(age:Int) -> String {
    var name = String()
    if age > 10 {
        print("芳龄:\(age), 名字返回")
        name = "xiaofang"
    }
    print("\(name)=name")
    return name
}

//getNone3(age: 11)


/* 搞特殊的参数 */
// 1内部参数, age是外部参数, a是内部参数, 为了方便自己书写
func getNone4(age a:Int) -> String {
    var name = String()
    if a > 10 {
        print("芳龄:\(a), 名字返回")
        name = "xiaofang"
    }
    print("\(name)=name")
    return name
}
//getNone4(age: 18)

// 2缺省参数, 提供默认
func getNone5(age a:Int=15) -> String {
    var name = String()
    if a > 10 {
        print("芳龄:\(a), 名字返回")
        name = "xiaofang"
    }
    print("\(name)=name")
    return name
}
//getNone5()

// 3可变参数, 数组类型
func getNone6(numbers:Double...){
    var temp = 0.0
    for m in numbers {
        print(m)
        temp += m
    }
    print("总和 = \(temp)")
}
//getNone6(numbers: 1.1, 2.2, 3.3)


// 4 地址传递
// 默认参数是值的传递, 无法修改局部变量, 地址传递可以修改全局
func swap(a:inout Int, b:inout Int){
    let temp = a
    a = b
    b = temp
}
var _a = 10
var _b = 20
swap(&_a, &_b)
print("out :: a=\(_a), b=\(_b)")

// 5 内置函数
func getVoid() {
    func po() {
        print("内置函数调用")
    }
    po()
}

getVoid()
