//
//  main.swift
//  L2-DataType
//
//  Created by Dobby on 03/03/2018.
//  Copyright © 2018 Dobby. All rights reserved.
//

import Foundation


// 一 数据类型声明 使用
let ranNum = 19.33            // 默认是Double
let ofDouble:Double = 10.00   // 64位浮点
let ofFloat:Float = 9.99877   // 32位浮点
let ofInt:Int = -1            // int默认就是有符号的  Uint
//let ofUint:UInt = -7   // overflow


print("\(ofInt)")

// 二 数据类型转换
134
// 数据类型转换的,Double()不修改原值, 只是拷贝转换为Double后赋值.
let newNum:Double = Double(ofInt)
print(newNum)
