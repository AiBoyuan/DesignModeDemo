//
//  ObserverPattern.swift
//  DesignModeDemo
//
//  Created by Aibo on 2018/7/12.
//  Copyright © 2018年 uuabc. All rights reserved.
//

import UIKit

protocol Observable {
    var observers: [Observer] { get }
    func add(observer: Observer)
    func remove(observer: Observer)
    func notifyObservers()
}

class ConcreteObservable: Observable {
    var observers = [Observer]()
    func add(observer: Observer) {
        observers.append(observer)
    }
    func remove(observer: Observer) {
        if let index = observers.index(where: { $0 === observer }) {
            observers.remove(at: index)
        }
    }
    func notifyObservers() {
        observers.forEach { $0.update() }
    }
}

protocol Observer: class {
    func update()
}

class ConcreteObserverA: Observer {
    func update() { print("A") }
}

class ConcreteObserverB: Observer {
    func update() { print("B") }
}


