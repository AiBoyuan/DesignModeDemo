//
//  DecoratorPattern.swift
//  DesignModeDemo
//
//  Created by Aibo on 2018/7/11.
//  Copyright © 2018年 uuabc. All rights reserved.
//

import UIKit


// 抽象构件
protocol Component {
    var cost: Int { get }
//    func operate()
}

// 抽象装饰者
protocol Decorator: Component {
    var component: Component { get }
    init(_ component: Component)
}

// 具体构件, 要装饰的角色
struct ConcreteComponent:Component {
    var cost: Int
    
//    func operate() {
//        print("啥也没有")
//    }
}

// 第一次装饰 咖啡
struct Coffee: Decorator {
    var component: Component
    
    init(_ component: Component) {
        self.component = component
    }
    
    var cost: Int{
        return component.cost + 1
    }
//    func operate() {
//        print("放入咖啡")
//    }
}

 // 第二次装饰 糖
struct Sugar: Decorator {
    var cost: Int {
        return component.cost + 2
    }
    var component: Component
    init(_ component: Component) {
        self.component = component
    }
//    func operate() {
//        print("放入糖")
//    }
}

// 第三次装饰 牛奶
struct Milk: Decorator {
    var cost: Int {
        return component.cost + 3
    }
    var component: Component
    init(_ component: Component) {
        self.component = component
    }
//    func operate() {
//        print("放入牛奶")
//    }

}


