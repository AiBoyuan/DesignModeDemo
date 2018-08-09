//
//  Car.swift
//  DesignModeDemo
//
//  Created by Aibo on 2018/8/9.
//  Copyright © 2018年 uuabc. All rights reserved.
//

import UIKit

// Component
protocol Car {
    // 多少钱
    func howMuch()-> Int
    // 展示装配的配件
    func showParts()
}

// ConcreteComponents
class Suv: Car {
    init(owner: String) {
        print("\(owner)买了一辆Suv，10W")
    }
    
    func howMuch() -> Int {
        return 10
    }
    
    func showParts() {}
}

class Mpv: Car {
    init(owner: String) {
        print("\(owner)买了一辆Mpv，15W")
    }
    func howMuch() -> Int {
        return 15
    }
    func showParts() {}
}

// Decorator
class CarParts: Car {
    var car: Car?
    func howMuch() -> Int {
        return car?.howMuch() ?? 0
    }
    func showParts() {
        car?.showParts()
    }
    func decorator(_ car: Car) -> Car {
        self.car = car
        return self
    }
}

// ConcreteDecorators
class Sofa: CarParts {
    override func howMuch() -> Int {
        return super.howMuch() + 1
    }
    override func showParts() {
        super.showParts()
        print("选配了真皮沙发，1W")
    }
}

class Safety: CarParts {
    override func howMuch() -> Int {
        return super.howMuch() + 3
    }
    
    override func showParts() {
        super.showParts()
        print("选配了全套安全系统，3W")
    }
}

class Engine: CarParts {
    override func howMuch() -> Int {
        return super.howMuch() + 5
    }
    override func showParts() {
        super.showParts()
        print("选配了V8发动机，5W")
    }
}
