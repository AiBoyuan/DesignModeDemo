//
//  Composite.swift
//  DesignModeDemo
//
//  Created by Aibo on 2018/7/12.
//  Copyright © 2018年 uuabc. All rights reserved.
//

import UIKit

// 抽象构件角色接口
protocol CComponent {
    func someMethod()
    var name: String { get }
    
}

// 叶子构件
class Leaf: CComponent {
    var name: String = ""
    
    func someMethod() {
        // Leaf
        print(self.name)
    }
}

// 树枝构件
class Composite: CComponent {
    var name: String = ""
    
    var components = [CComponent]()
    func someMethod() {
        // Composite
        print(self.name)
    }
    
    func disPlay() {
        components.forEach { (component) in
            if component is Composite {
                print(component.name + "开始：")
                (component as! Composite).disPlay()
                print(component.name + "结束：")
            } else {
                component.someMethod()
            }
        }
    }
}

