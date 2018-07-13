//
//  SingletonManager.swift
//  DesignModeDemo
//
//  Created by Aibo on 2018/7/9.
//  Copyright © 2018年 uuabc. All rights reserved.
//

import UIKit

// final关键字的作用是这个类或方法不希望被继承和重写

final class SingletonManager: NSObject {
    //构造函数是私有的。
    private override init(){}
    static let shared = SingletonManager() // “懒实例化”的全局变量会被自动放在dispatch_once块中[4]
    
    func doSomeThing() {
        print("\(self) Current method --------- \(#function)")
    }
}
// 方式二：在方法内定义静态常量
class SingletonManager2: NSObject {
    //构造函数是私有的。
    private override init(){}
    
    static var shared:SingletonManager2 {
        struct Static {
            static let instance : SingletonManager2 = SingletonManager2()
        }
        return Static.instance
    }
    
    func doSomeThing() {
        print("\(self) method --------- \(#function)")
    }
}




