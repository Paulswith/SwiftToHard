//
//  main.swift
//  L3-Operators
//
//  Created by Dobby on 03/03/2018.
//  Copyright © 2018 Dobby. All rights reserved.
//

import Foundation

// 1.支持小数模. swift3之后小数取模要调用下面的方法
let num:Double = 99.0
let divise = num.truncatingRemainder(dividingBy: 3.55)
print(divise)

// 2.布尔值
/** bool false true
    逻辑判断语句必须是上方三种, 不像OC的非0即YES
 也就是, 逻辑条件只允许两种 : 本身布尔值, 返回布尔值.
 */

var abs:Bool = false
//if (abs = true) {       // 直接报错, 不允许赋值,
if (!abs) {       // 直接报错, 不允许赋值,
    print("RUNNing")
}


// 3.区间
/**
 0...20  [0,20] 属于0到20这个闭区间, 包括头尾
 0..<20   [0,20)   不包括尾
 */
var counter:Int = 0
for index in 0..<20 {
    print(index)
    
//    print(counter)
//    counter++         // swift 不允许++ --  用 +=1 -=1 替代
}
