//
//  main.swift
//  L4-StringOperation
//
//  Created by dobby on 2018/4/24.
//  Copyright © 2018 Dobby. All rights reserved.
//

import Foundation


let string = " / 2 3 4 /"
// 字符串替换
print("``[ 字符串替换 ]``\n空格过滤为-",string.replacingOccurrences(of: " ", with: "-"))
// 字符串过滤, 替换为无字符
print("``[ 字符串过滤 ]``\n过滤空格",string.replacingOccurrences(of: " ", with: ""))
// 分割, 返回数组
print("``[ 字符串分割 ]``\n以斜杠分割",string.components(separatedBy:"/"))
// 拼接
let array = ["a", "b", "c"]
print("``[ 字符串拼接 ]``\n数组拼接为一个字符串",array.joined(separator: "--"))



/**
 字符串截取
 */
let timeString = "2018-4-24"
// 从timeString这个字符串的尾巴开始索引, 索引-2, [虽然前面告诉了是从后面索引, 但是还是得要负数, 有点傻]
let inde = timeString.index(timeString.endIndex, offsetBy: -1)   // 这样子只是返回一个索引器
print(timeString[inde])
// 从头开始索引
let inde_ = timeString.index(timeString.startIndex, offsetBy: 4)
print(timeString[inde_])


// 切片方法1, 用两个range来切片
/* △△△: 切片*/
let stRange = timeString.index(timeString.startIndex, offsetBy: 3)
let enRange = timeString.index(timeString.endIndex, offsetBy: -4)
let rangeString = timeString[stRange...enRange]
//let rangeString = timeString[stRange..<enRange]  // 也是可行的, 相当于尾巴再-1
print(rangeString)

// 切片方法2
let str = "2018-4-24"
let ind = str.index(of: "-")!   // 有可能拿到或拿不到, 需要强制解包, 默认第一个

/* △△△: 切片*/
// swift4, 从头向尾索引, 或向头
print(str[ind...])
print(str[...ind])
let substr = str.prefix(upTo: ind) // 用这个索引, 从头部开始切片刀这个索引后面
print(substr)



// 字符串格式化

let min = 3
let second = 4
let time = String(format: "%03d:%03d", arguments:[min,second]) // %03d 需要输出三位,不足的以0补齐|| %3d 需要输出三位,不足的以空格补齐

print(time)








