//
//  FactoryPattern.swift
//  DesignModeDemo
//
//  Created by Aibo on 2018/7/10.
//  Copyright © 2018年 uuabc. All rights reserved.
//

import UIKit

// 定义产品
@objc protocol Product {
    func method1()
}

// 具体产品1
class ConcreteProduct1: Product {
    func method1() {
       // 业务罗辑处理
        print("产品 1")
    }
}

// 具体产品2
class ConcreteProduct2: Product {
    func method1() {
        // 业务罗辑处理
        print("产品 2")
    }
}

// 创建工厂方法
class Factory {
    func createProduct() -> Product? { return nil } // 用于继承
    func createProduct(type: Int) -> Product? { // 用于调用
        if type == 0 {
            return ConcreteFactory1().createProduct()
        } else {
            return ConcreteFactory2().createProduct()
        }
    }
}

// 创建生产产品1的工厂类
class ConcreteFactory1: Factory {
    override func createProduct() -> Product? {
        // ... 产品加工过程
        return ConcreteProduct1()
    }
}

// 创建生产产品2的工厂类
class ConcreteFactory2: Factory {
    override func createProduct() -> Product? {
        // ... 产品加工过程
        return ConcreteProduct2()
    }
}

class Client {
    let f = Factory()
}

