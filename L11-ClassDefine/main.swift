//
//  main.swift
//  L11-ClassDefine
//
//  Created by dobby on 2018/4/24.
//  Copyright © 2018 Dobby. All rights reserved.
//

import Foundation

/*
 static 全局,  必须在定义的时候赋值
 */

class TiniObject: NSObject {
    // 属性定义
     var calAge:Double! {  // 非明确类型在下方调用的时候需要解包, 因为没有初始化值
        // willSet 方法
        willSet {
            print("will set \(newValue)")
        }
        // didSet 方法
        didSet {
            print("seted value \(calAge)")
        }
    }
    var calWeight:Double! {
        // 设置只读属性
        get {
            return 998.22
        }
    }
    
    public func firstFunc() {
        print("first-func: \(self.calAge)")
    }
}


let tini:TiniObject = TiniObject()
tini.calAge = 288
print(tini.calWeight)
tini.firstFunc()



// struct 结构体和 enum 枚举 . 配合static使用
struct Direction {
    static let E = "east"
    static let W = "west"
}

enum Dire {
    case West
    case East
}

enum DireC {
    static let N = "Norse"
    static let S = "Source"
}

// 结构体玩法, 通过一个点在改变其他点
struct NameInfo {
    static var age = 18
    static var weight = 73
    var currentName:String = "joh" {
        willSet {
            if NameInfo.age > 10 {
                NameInfo.age = 20
            }
        }
        didSet {
            guard NameInfo.weight > 75 else {
                NameInfo.weight = 100
                print("nameInfo = \(NameInfo.age) && \(NameInfo.weight)")
                return
            }
        }
    }
}

var info = NameInfo()
info.currentName = "make"








