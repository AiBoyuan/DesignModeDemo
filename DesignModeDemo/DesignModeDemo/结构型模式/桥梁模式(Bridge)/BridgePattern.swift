//
//  BridgePattern.swift
//  DesignModeDemo
//
//  Created by Aibo on 2018/8/9.
//  Copyright © 2018年 uuabc. All rights reserved.
//

import UIKit

// Abstraction—— 抽象化 角色

protocol TVProtocol {
    func switchChannel()  // 切换频道
    func adjustVolune()   // 调节音量
    func powerSwitch()    // 电源开关
}

//
class AbstractTV: NSObject,TVProtocol {
    func switchChannel() {
        print("切换频道，由具体的子类来实现")
    }
    func adjustVolune() {
        print("调节音量，由具体的子类来实现")
    }
    func powerSwitch() {
        print("电源开关，由具体的子类来实现")
    }
}

class ConcreteTVA: AbstractTV {
    override func switchChannel() {
        print("电视机A具备了切换频道的功能")
    }
    override func adjustVolune() {
        print("电视机A具备了调节音量的功能")
    }
    override func powerSwitch() {
        print("电视机A具备了电源开关的功能")
    }
}

class ConcreteTVB: AbstractTV {
    override func switchChannel() {
        print("电视机B具备了切换频道的功能")
    }
    override func adjustVolune() {
        print("电视机B具备了调节音量的功能")
    }
    override func powerSwitch() {
        print("电视机B具备了电源开关的功能")
    }
}

class AbstractRemoteontrol: NSObject {
    var tvProtocol:TVProtocol?
    func detectTVFunction(){
        print("检测电视机具备的功能，由子类来进行实现")
    }
}

class ConcreteRemoteControl: AbstractRemoteontrol {
    override func detectTVFunction() {
        self.tvProtocol?.switchChannel()
        self.tvProtocol?.adjustVolune()
        self.tvProtocol?.powerSwitch()
    }
}
