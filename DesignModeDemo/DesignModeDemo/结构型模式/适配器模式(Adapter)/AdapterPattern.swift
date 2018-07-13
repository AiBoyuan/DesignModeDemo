//
//  AdapterPattern.swift
//  DesignModeDemo
//
//  Created by Aibo on 2018/7/10.
//  Copyright © 2018年 uuabc. All rights reserved.
//

import UIKit

// 目标角色
protocol Target {
    // 目标角色自己的方法
    func request()
//    var value: String { get }
}

// 源角色
class Adaptee {
    // 原有的业务罗辑
    func doSomeThing() {
        print("原有的业务罗辑 thing")
    }
//    var value: Int = 0
}

// 具体目标角色
class ConcreteTarget:Target {
    func request() {
        print("现有的业务 thing")
    }
//    var value: String = ""
}

// 适配器角色
// 这里可以继承Adaptee，也可以把Adaptee当成Adapter的属性
class Adapter:Adaptee, Target {
    
//    let adaptee: Adaptee
//    init(_ adaptee: Adaptee) {
//        self.adaptee = adaptee
//    }
    func request() {
        super.doSomeThing()
    }
    
//    var value: String {
//        return "\(super.value)"
//    }

}


/*  结构体实现
protocol Target {
    var value: String { get }
}

struct Adapter: Target {
    let adaptee: Adaptee
    var value: String {
        return "\(adaptee.value)"
    }
    init(_ adaptee: Adaptee) {
        self.adaptee = adaptee
    }
}

struct Adaptee {
    var value: Int
}
Adapter(Adaptee(value: 1)).value // "1"
 */
