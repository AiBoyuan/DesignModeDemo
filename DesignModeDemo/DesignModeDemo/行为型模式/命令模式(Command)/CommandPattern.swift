//
//  CommandPattern.swift
//  DesignModeDemo
//
//  Created by Aibo on 2018/7/11.
//  Copyright © 2018年 uuabc. All rights reserved.
//

import UIKit


protocol Command {
    var operation: () -> Void { get }
    var backup: String { get }
    func undo()
}

struct ConcreteCommand: Command {
    var backup: String
    var operation: () -> Void
    func undo() {
        print(backup)
    }
}

struct Invoker {
    var command: Command
    func execute() {
        command.operation()
    }
    func undo() {
        command.undo()
    }
}
