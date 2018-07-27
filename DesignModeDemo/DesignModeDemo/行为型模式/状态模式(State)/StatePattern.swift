//
//  StatePattern.swift
//  DesignModeDemo
//
//  Created by Aibo on 2018/7/27.
//  Copyright © 2018年 uuabc. All rights reserved.
//

import UIKit

protocol State {
    func operation()
}

class ConcreteStateA: State {
    func operation() {
        print("A")
    }
}

class ConcreteStateB: State {
    func operation() {
        print("B")
    }
}

class Context {
    var state: State = ConcreteStateA()
    func someMethod() {
        state.operation()
    }
}

