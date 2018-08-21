//
//  ObserverPattern.swift
//  DesignModeDemo
//
//  Created by Aibo on 2018/7/12.
//  Copyright © 2018年 uuabc. All rights reserved.
//

import UIKit

// 被观察者
protocol Observable {
    var observers: [Observer] { get }
    func add(observer: Observer)
    func remove(observer: Observer)
    func notifyObservers()
}

// 具体的被观察者
class ConcreteObservable: Observable {
    var observers = [Observer]()
    var num  = 10;
    func add(observer: Observer) {
        observers.append(observer)
    }
    func remove(observer: Observer) {
        if let index = observers.index(where: { $0 === observer }) {
            observers.remove(at: index)
        }
    }
    func notifyObservers() {
        observers.forEach { $0.update(num: num) }
    }
}

// 观察者接口
protocol Observer: class {
    func update(num:Int)
}

// 具体观察者
class ConcreteObserverA: Observer {
    func update(num:Int) { print("A + \(num)") }
}

// 具体观察者
class ConcreteObserverB: Observer {
    func update(num:Int) { print("B + \(num)") }
}


