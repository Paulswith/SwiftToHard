//
//  main.swift
//  L12-Closures
//
//  Created by dobby on 2018/4/25.
//  Copyright © 2018 Dobby. All rights reserved.
//  闭包

import Foundation


var array = ["replaceFirst", "bb", "keepingCapacity: false", "nmew"]
var reversedNames = [String]()

/* 作为参数传入的闭包 */
// 繁写
//reversedNames = array.sorted(by: {(s1:String, s2:String) -> Bool in
//    return s1 > s2
//})

// 简写
//reversedNames = array.sorted(by: {s1,s2 in
//    return s1 < s2
//})

// 速记
// swift的参数类似命令行 从$0(自身)到全部参数, 用$n替代
//reversedNames = array.sorted(by: {$0 > $1})

// 事件 , 直接给与比较符
reversedNames = array.sorted(by: >)

print(array)
print(reversedNames)



/* 书写自己的闭包函数 */
// (参数:() -> 闭包是否返回什么)
func someFunctionThatTakesAClosure(closure:() -> Void) -> String{
    print("hello- getclosure")
    closure()
    return "DONE"
}
var str = someFunctionThatTakesAClosure(closure: {
    print("hello")
})
print(str)


/* map中的闭包 */
let digitNames = [
    0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
]
let numbers = [16, 58, 510]

let stings = numbers.map{(number) -> String in
    var num = number
    var output = ""
    repeat{
        output = digitNames[num%10]! + output   // [number%10]!能拿到最后一个数, 拼接字符串他是后拼前的.
        num /= 10                               // 除了10之后干掉后面一位
    }while num > 0
    return output
}

print("stings = \(stings)")


/* 嵌套函数返回 */
// 第一层返回函数 (), 第二层返回Int
func increater(_ incre:Int) -> () -> Int{
    var total = 0
    func calTotal() -> Int {
        total += incre
        return total
    }
    return calTotal
}
let retFunc = increater(9)
print(retFunc())
let retFunc2 = increater(100)
print(retFunc2())


/* Autoclosure */
var customersInLine = ["Ewa", "Barry", "Daniella"]
//func serve(customer customerProvider:() -> String) {
//    print("Using \(customerProvider())")
//}
//serve(customer: {customersInLine.remove(at: 0)})  // 没有autoClosure的函数传递闭包, 需要大括号{}
//serve(customer:"AHC")                           // 且没有办法直接给字符串


func serve(customer customerProvider:@autoclosure() -> String) {
    print("Using \(customerProvider())")
}
serve(customer: customersInLine.remove(at: 0))      // 使用了@autoClosure 可以给闭包,无需大括号 (remove相当于pop)
serve(customer: "customersInLine.remove(at: 0)")    // 且兼容仅单一返回到的类型

