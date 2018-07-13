//
//  AbstractFactory.swift
//  DesignModeDemo
//
//  Created by Aibo on 2018/7/10.
//  Copyright © 2018年 uuabc. All rights reserved.
//

import UIKit

// 创建产品A接口
protocol ProductA {
    func method1()
}

// 创建具体产品A1
class ConcreteProductA1: ProductA {
    func method1() {
        // 业务罗辑处理
        print(self)
    }
}
// 创建具体产品A2
class ConcreteProductA2: ProductA {
    func method1() {
        // 业务罗辑处理
        print(self)
    }
}

// 创建产品B接口
protocol ProductB {
    func method1()
}

// 创建具体产品B1
class ConcreteProductB1: ProductB {
    func method1() {
        // 业务罗辑处理
        print(self)
    }
}

// 创建具体产品B2
class ConcreteProductB2: ProductB {
    func method1() {
        // 业务罗辑处理
        print(self)
    }
}

// 客户端调用
class AbsClient {
    let f = AbsFactory()
}

// 创建工厂类
class AbsFactory {
    func createProductA() -> ProductA? { return nil } // 用于继承
    func createProductB() -> ProductB? { return nil } // 用于继承
    func createProductA(type: Int) -> ProductA? { // 用于调用
        if type == 0 {
            return ConcreteFactoryAbs1().createProductA()
        } else {
            return ConcreteFactoryAbs2().createProductA()
        }
    }
    func createProductB(type: Int) -> ProductB? { // 用于调用
        if type == 0 {
            return ConcreteFactoryAbs1().createProductB()
        } else {
            return ConcreteFactoryAbs2().createProductB()
        }
    }
}

// 创建工厂1  主要生产A1、B1
class ConcreteFactoryAbs1: AbsFactory {
    override func createProductA() -> ProductA? {
        // ... 产品加工过程
        return ConcreteProductA1()
    }
    override func createProductB() -> ProductB? {
        // ... 产品加工过程
        return ConcreteProductB1()
    }
}

// 创建工厂1  主要生产A2、B2
class ConcreteFactoryAbs2: AbsFactory {
    override func createProductA() -> ProductA? {
        // ... 产品加工过程
        return ConcreteProductA2()
    }
    override func createProductB() -> ProductB? {
        // ... 产品加工过程
        return ConcreteProductB2()
    }
}




