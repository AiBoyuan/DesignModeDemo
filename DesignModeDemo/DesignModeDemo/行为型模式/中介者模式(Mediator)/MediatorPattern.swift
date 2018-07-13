//
//  MediatorPattern.swift
//  DesignModeDemo
//
//  Created by Aibo on 2018/7/11.
//  Copyright © 2018年 uuabc. All rights reserved.
//

import UIKit

// 中介者接口
protocol Mediator: class {
    func notify(message: String)
    func addReceiver(_ receiver: Receiver)
}

// 中介者具体实现者
class ConcreteMediator: Mediator {
    var recipients = [Receiver]()
    func notify(message: String) {
        recipients.forEach { $0.receive(message: message) }
    }
    func addReceiver(_ receiver: Receiver) {
        recipients.append(receiver)
    }
}

protocol Receiver {
    func receive(message: String)
}

// 
protocol MComponent: Receiver {
    var mediator: Mediator? { get }
}

struct ConcreteMComponent: MComponent {
    weak var mediator: Mediator?
    var name: String
    func receive(message: String) {
        print(name, " receive: ", message)
    }
}
