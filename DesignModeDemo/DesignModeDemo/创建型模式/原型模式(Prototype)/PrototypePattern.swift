//
//  PrototypePattern.swift
//  DesignModeDemo
//
//  Created by Aibo on 2018/7/10.
//  Copyright © 2018年 uuabc. All rights reserved.
//

import UIKit

// 原型模式在iOS开发中就是NSCopying协议，通过实现这个协议完成对象和其成员对象的完全内存拷贝，也可以称为深拷贝
protocol Cloning {
    func clone() -> AnyObject
}

protocol Prototype {
    func clone() -> Prototype
}

struct PProduct: Prototype {
    var title: String
    func clone() -> Prototype {
        return PProduct(title: title)
    }
}
