//
//  Person.swift
//  DesignModeDemo
//
//  Created by Aibo on 2018/7/10.
//  Copyright © 2018年 uuabc. All rights reserved.
//

import UIKit

// https://www.jianshu.com/p/da44d1fd8440

@objc protocol PersonProtocol:NSObjectProtocol {
    ///  可选
    @objc optional func runSpeed(speed:Int)
    /// 必选
    func talk()
}

class Person: NSObject {
    var delegate:PersonProtocol?
    
    func run(speed:Int) {
        /// 在编写swift协议中自定义了可选方法之后的判断则可以利用swift的可空链直接由系统进行判断。
        /// delegate?.method?()
        /// 对于可空链，第一个问号会判断delegate是否存在，如果不存在，则直接返回nil，如果存在，则调用method，method后的问号，会直接对该方法进行判断，如果代理对象实现了method，则调用method在代理对象中的实现，如果代理对象没有实现该可选的method，则返回空，并且不会造成程序崩溃。
        
        delegate?.runSpeed?(speed: speed * 5)
        
//        if (self.delegate?.responds(to:Selector(("runSpeed")) ))! {
//
//        } 
    }
    
    func talk() {
        delegate?.talk()
    }
    
}
