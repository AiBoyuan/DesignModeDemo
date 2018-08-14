//
//  TemplatePattern.swift
//  DesignModeDemo
//
//  Created by Aibo on 2018/7/12.
//  Copyright © 2018年 uuabc. All rights reserved.
//

import UIKit

//通用代码

class AbstractClass {
    // 基本方法
    func doSomeThing1() {}
    // 基本方法
    func doSomeThing2() {}
    func TemplateMethod() {
        doSomeThing1()
        doSomeThing2()
    }
}

class ConreteClass1: AbstractClass {
    override func doSomeThing1() {
        print("class1 doSomeThing1")
    }
    override func doSomeThing2() {
        print("class1 doSomeThing2")
    }
}

class ConreteClass2: AbstractClass {
    override func doSomeThing1() {
        print("class2 doSomeThing1")
    }
    override func doSomeThing2() {
        print("class2 doSomeThing2")
    }
}





//================================
class Soldier {
    func attack() {} // <-- Template Method
    private init() {} // <-- avoid creation
}

class Paladin: Soldier {
    override func attack() {
        print("hammer")
    }
}

class Archer: Soldier {
    override func attack() {
        print("bow")
    }
}
