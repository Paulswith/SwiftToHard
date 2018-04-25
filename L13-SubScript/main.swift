//
//  main.swift
//  L13-SubScript
//
//  Created by dobby on 2018/4/25.
//  Copyright © 2018 Dobby. All rights reserved.
//  对结构体下标索引

import Foundation

struct TimeStamp {
    let multip:Int
    subscript(index:Int) -> Int{
        return multip * index
    }
}

let timeStamp:TimeStamp = TimeStamp(multip: 110) // 因为是可选类型, 所以必须要赋值
print(timeStamp[6])   // 下表方法,-> 最终会走到subscript这个方法


