//
//  main.swift
//  L6-Array
//
//  Created by dobby on 2018/4/24.
//  Copyright © 2018 Dobby. All rights reserved.
//

import Foundation

// 创建空数组, var是可变, let不可变数组
var array:Array<String>    // 这只是定义, 尚未初始化
array = ["aa", "bb"]       // 赋值才是初始化, 才可以调用实例方法
array.append("keepingCapacity: false")

// 定义且初始化
var array1:[String]  = [String]()
array1.append("哈哈")

// 创建不可变数组, 任意类型
let array3:[Any] = ["----", 1999, 10.22]
print(array3)


/* 数组操作 */
array.append("nmew")
array[0] = "replaceFirst"
//array.remove(at: 1)
//array.removeFirst()
//array.removeLast()
//array.removeAll(keepingCapacity: true)
print(array)

// 类似浅拷贝
var arryaCopy = array[0...1]
print(arryaCopy)
// 合并数组
let arrayPlus = array + arryaCopy
print(arrayPlus)



/* 遍历 */
for n in 0..<array.count {
    print(array[n])
}
for item in array {
    print(item)
}

// 只要第一 和 第二
for sub in array[0..<2] {
    print(sub)
}



