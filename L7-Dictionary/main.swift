//
//  main.swift
//  L7-Dictionary
//
//  Created by dobby on 2018/4/24.
//  Copyright © 2018 Dobby. All rights reserved.
//

import Foundation

// 定义
var dict1:[String:AnyObject] // 未初始化
var dict3:[String:AnyObject] = [String:AnyObject]()  // 空数组

// 定义且赋值
var dict2:Dictionary<String, Int> = ["a":97, "b":98]
print(dict2)


/* 字典操作 */
// 赋值
var dict4 = [String:Float]()
dict4["height"] = 172.2
dict4["weight"] = 73.22
print(dict4)

// 遍历
for key in dict4.keys {
    print(key)
}
for value in dict4.values {
    print(value)
}
for (key,item) in dict4 {
    print("\(key):\(item)")
}


