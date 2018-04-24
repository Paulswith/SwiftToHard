//
//  main.swift
//  L8-Tuple
//
//  Created by dobby on 2018/4/24.
//  Copyright © 2018 Dobby. All rights reserved.
//

import Foundation

/* 数组完整的描述一组信息 */
// 单个数组可以使用点语法, 加索引访问, 从1开始
let zhangsan = ("zhangsan", 172.2, "shenzhen", 75.2, 23999999)
print(zhangsan.1)

// 超酷的名字元组, 用点名字取值
var lisi = (name:"lisi", height:172.222, addr:"shenzhen/nanshan", weight:74.2)
print(lisi.name)

// 直接赋值, _语法忽略
let (name, _, _, _) = lisi
print(name)

// △△△元组不可修改长度和数据类型, 但可以var可以修改值
lisi.name = "listDad"
print(lisi.name)

// 作为元组的返回值
func getBodyInfo(name:String) -> (name:String, weight:Double, height:Double, addr:String) {
    return (lisi.name, lisi.weight, lisi.height, lisi.addr)
}
let (lname, _, _, addr) = getBodyInfo(name: "lisi")
print("\(lname) live in \(addr)")
