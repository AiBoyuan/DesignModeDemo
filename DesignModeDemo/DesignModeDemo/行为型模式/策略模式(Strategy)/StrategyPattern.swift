//
//  StrategyPattern.swift
//  DesignModeDemo
//
//  Created by Aibo on 2018/7/30.
//  Copyright © 2018年 uuabc. All rights reserved.
//

import UIKit

// 武器算法
protocol WeaponBehavior {
    func use()
}

// 挥剑算法
class SwordBehavior: WeaponBehavior {
    func use() { print("sword") }
}

// 拉弓算法
class BowBehavior: WeaponBehavior {
    func use() { print("bow") }
}

// 角色
class Character {
    var weapon: WeaponBehavior?
    func attack() {  weapon?.use() }
}

// 骑士
class Knight: Character {
    override init() {
        super.init()
        weapon = SwordBehavior()
    }
}

// 弓箭手
class Archer1: Character {
    override init() {
        super.init()
        weapon = BowBehavior()
    }
}

class StrategyContext  {
    private var strategy:Character?
    
    func context(strategy:Character) {
        self.strategy = strategy
    }
    func doSomething() {
        self.strategy?.weapon?.use()
    }
}

///////////////////////////////////

