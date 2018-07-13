//
//  ProxyPattern.swift
//  DesignModeDemo
//
//  Created by Aibo on 2018/7/10.
//  Copyright © 2018年 uuabc. All rights reserved.
//

import UIKit

// 主题角色接口
protocol Subject {
    mutating func operation()
}

// 
struct SecretObject: Subject {
    func operation() {
        // 真正实现部分
        // real implementation
        print("do some thing")
    }
}

struct PublicObject: Subject {
    private lazy var s = SecretObject()
    mutating func operation() {
        s.operation()
    }
}
