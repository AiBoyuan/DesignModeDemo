//
//  SimpleProduct.swift
//  DesignModeDemo
//
//  Created by Aibo on 2018/7/10.
//  Copyright © 2018年 uuabc. All rights reserved.
//

import UIKit

protocol SimpleProduct {
    func method1()
}

class ConcreteProductA: SimpleProduct {
    func method1() {
        // 业务罗辑处理
    }
}
class ConcreteProductB: SimpleProduct {
    func method1() {
        // 业务罗辑处理
    }
}

class SimpleFactory {
    func createProduct(type: Int) -> SimpleProduct {
        if type == 0 {
            return ConcreteProductA()
        } else {
            return ConcreteProductB()
        }
    }
}

class SimpleClient {
    let factory = Factory()
}

