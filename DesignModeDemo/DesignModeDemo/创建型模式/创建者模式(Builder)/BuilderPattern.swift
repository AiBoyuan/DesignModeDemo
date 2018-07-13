//
//  BuilderPattern.swift
//  DesignModeDemo
//
//  Created by Aibo on 2018/7/10.
//  Copyright © 2018年 uuabc. All rights reserved.
//

import UIKit

/// 1、复杂版

// 建造者
protocol Builder {
    func setPart()
    func buildProduct() -> BuilderProduct
}

// 产品
class BuilderProduct{
    func method1() {
        print("\(self)" + "\(#function)")
    }
}

// 具体建造者
class ConcreteProductBp: Builder{
    private var product = BuilderProduct()
    // 设置产品零件
    func setPart() {
        // 处产品类内的罗辑处理
        print(self)
    }
    
    func buildProduct() -> BuilderProduct {
        return product
    }
}

class Director {
    private var builder = ConcreteProductBp()
    func getAProduct() -> BuilderProduct {
        builder.setPart()
        // 设置不同的零件，产生不同的产品
        return builder.buildProduct()
    }
}


/* 2、简单版

struct Builder {
    var partA: String
    var partB: String
}

struct BuilderProduct {
    var partA: String
    var partB: String
    init(builder: Builder) {
        partA = builder.partA
        partB = builder.partB
    }
}
*/
