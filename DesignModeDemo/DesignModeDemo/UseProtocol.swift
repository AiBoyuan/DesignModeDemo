//
//  UseProtocol.swift
//  DesignModeDemo
//
//  Created by Aibo on 2018/7/6.
//  Copyright © 2018年 uuabc. All rights reserved.
//

import UIKit

@objc protocol UseProtocol {
    // 必选
    func commit() -> Bool
    // 可选
    @objc optional func isComplete() -> Bool
}
