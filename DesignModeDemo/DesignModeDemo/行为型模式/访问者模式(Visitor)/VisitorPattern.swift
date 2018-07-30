//
//  VisitorPattern.swift
//  DesignModeDemo
//
//  Created by Aibo on 2018/7/30.
//  Copyright © 2018年 uuabc. All rights reserved.
//

import UIKit

protocol Visitor {
    func visit(_ c: ComponentA)
    func visit(_ c: ComponentB)
}

struct ConcreteVisitor: Visitor {
    func visit(_ c: ComponentA) {
        c.featureA()
    }
    func visit(_ c: ComponentB) {
        c.featureB()
    }
}

protocol VTComponent {
    func accept(_ v: Visitor)
}

struct ComponentA: VTComponent {
    func featureA() {
        print("Feature A")
    }
    func accept(_ v: Visitor) {
        v.visit(self)
    }
}

struct ComponentB: VTComponent {
    func featureB() {
        print("Feature B")
    }
    func accept(_ v: Visitor) {
        v.visit(self)
    }
}

