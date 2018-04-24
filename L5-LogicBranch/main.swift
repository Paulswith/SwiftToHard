//
//  main.swift
//  L5-LogicBranch
//
//  Created by dobby on 2018/4/24.
//  Copyright © 2018 Dobby. All rights reserved.
//

import Foundation

/* FOR */
// [0, 10)
for x in 0..<10 {
    print(x)
}

// [0, 10]
for x in 0...10 {
    print(x)
}

// 无需使用index , 用_忽视
for _ in 0..<10 {
    print("hello")
}


/* WHILE */
var num = 5
while (num < 10) {
    print("\(num) it;")
    num += 1     // 必须存在线性停止条件
}


/* repeatWhile, `先党羽dowhile, 只不过先执行再判断 */
var b = 5
repeat {
    print(b)
    b += 1
}while b < 10


/* guard, 取反语句 */
func online(age: Int) -> Void {
    guard (age >= 18) else {
        print("小于18")
        return
    }
    print("Keep")
}
online(age: 17)

/* Switch */
let z = 8
switch z {
case 1,2:               // 两个判断
    print("1-2")
case 3...7:             // 区间判断
    print("[3,5]")
case 8:                 // 代表成立, 依然往下面走, "穿透"
    fallthrough
//case 1.333:             // 允许多种数据类型, 浮点也可以参加
//    print("1.333")
//case "off":
//    print("字符串OFF")
default:
    print("无知")
}




