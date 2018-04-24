//
//  main.swift
//  L9-OptionalType
//
//  Created by dobby on 2018/4/24.
//  Copyright © 2018 Dobby. All rights reserved.
//

import Foundation

// 可选类型 有值或者无值, 使用的时候需要unwrap(解包), 定义的时候加上?表示

// 定义, 定义的时候需要制定类型
let str1:String? = nil

// 用法1:
//print(str1!)   // 给空值解包会报错 , 正确用法是判断下
if (str1 != nil) {
    print(str1!)
}

// 用法2, 常用:
// 可选绑定, 赋值的过程中解包了, 这时候它的实际值是nil 无法继续
if let newStr = str1 {
    print(newStr)
}

// 使用3:
// 用可能字符串转URL的时候错误了,就会抛错, 但是可选类型可以捕获, 配合下列使用
//let url:NSURL? = NSURL(string: "http://paulswith.捕github.io") // 存在中文会报错
let url:NSURL? = NSURL(string: "http://paulswith.github.io")  //  这样子不会
if let tUrl = url {
    print("curl \(tUrl)....")
}else {
    print("the url has some error")
}

