//
//  Shape.swift
//  DesignModeDemo
//
//  Created by Aibo on 2018/7/9.
//  Copyright © 2018年 uuabc. All rights reserved.
//

import UIKit

// 工厂模式举例

// 形状
@objc protocol Shape {
    // 必选
    func draw()
    // 可选
    @objc optional func isComplete() -> Bool
}

// 长方形
class Rectangle: NSObject, Shape {
    func draw() {
        print("Inside Rectangle draw() method")
    }
}

// 正方形
class Square: NSObject, Shape {
    func draw() {
        print("Inside Square draw() method")
    }
}

// 圆形
class Circle: NSObject, Shape {
    func draw() {
        print("Inside Circle draw() method")
    }
}

// 工厂方法
class ShapeFactory: NSObject {
    /// 使用 getShape 方法获取形状类型的对象
    /// 也可以使用静态方法
    public func getShape(shapeType:Int) ->Shape {
        if shapeType == nil {
            return NSNull() as! Shape
        }
        if shapeType == 0 {
            return Circle()
        } else if shapeType == 1 {
            return Rectangle()
        } else if shapeType == 2 {
            return Square()
        }
        return NSNull() as! Shape
    }
}
