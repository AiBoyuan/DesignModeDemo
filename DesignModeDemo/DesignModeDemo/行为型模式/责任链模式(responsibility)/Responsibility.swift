//
//  Responsibility.swift
//  DesignModeDemo
//
//  Created by Aibo on 2018/7/12.
//  Copyright © 2018年 uuabc. All rights reserved.
//

import UIKit

protocol ChainTouchable {
    var next: ChainTouchable? { get }
    func touch()
}

class ViewA: ChainTouchable {
    var next: ChainTouchable? = ViewB()
    func touch() {
        next?.touch()
    }
}

class ViewB: ChainTouchable {
    var next: ChainTouchable? = ViewC()
    func touch() {
        next?.touch()
    }
}

class ViewC: ChainTouchable {
    var next: ChainTouchable? = nil
    func touch() {
        print("C")
    }
}

