//
//  main.swift
//  L11-ClassDefine
//
//  Created by dobby on 2018/4/24.
//  Copyright © 2018 Dobby. All rights reserved.
//

import Foundation

class TiniObject: NSObject {
    // 属性定义
    var age:Int = 0
    var name:String?
    var chineseScore:Double = 0.0
    var mathScore:Double = 0.0
    
    
    var calAge:Double {
        get {
            return chineseScore/mathScore
        }
        set {
            self.calAge = newValue   // 这个是临时存储的值, 系统指派
        }
    }
    
    func firstFunc() {
        print("first-func: \(self.calAge)")
    }
}


let tini:TiniObject = TiniObject()
//tini.age = 19
//tini.name = "yaoming"
tini.chineseScore = 20000.22
tini.mathScore = 123.23
tini.calAge = 288
tini.firstFunc()
//tini.firstFunc()


