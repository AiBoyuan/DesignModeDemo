//
//  FacadePattern.swift
//  DesignModeDemo
//
//  Created by Aibo on 2018/7/16.
//  Copyright © 2018年 uuabc. All rights reserved.
//

import UIKit

protocol Facade {
    func simpleMethod()
}

class LegacyCode {
    func someMethod1() { }
    func someMethod2() { }
}

extension LegacyCode: Facade {
    func simpleMethod() {
        someMethod1()
        someMethod2()
    }
}

class FacadeClient {
    let f: Facade = LegacyCode()
}
