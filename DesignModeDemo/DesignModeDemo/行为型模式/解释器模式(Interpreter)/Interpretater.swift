//
//  Interpretater.swift
//  DesignModeDemo
//
//  Created by Aibo on 2018/7/30.
//  Copyright © 2018年 uuabc. All rights reserved.
//

import UIKit

protocol Expression {
    func evaluate(_ context: String) -> Int
}

struct MyAdditionExpression: Expression {
    func evaluate(_ context: String) -> Int {
        return context.components(separatedBy: "加")
            .flatMap { Int($0) }
            .reduce(0, +)
    }
}
