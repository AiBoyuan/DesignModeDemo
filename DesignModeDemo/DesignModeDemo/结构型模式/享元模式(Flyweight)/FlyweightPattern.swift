//
//  FlyweightPattern.swift
//  DesignModeDemo
//
//  Created by Aibo on 2018/7/30.
//  Copyright © 2018年 uuabc. All rights reserved.
//

import UIKit

struct TargetObject {
    var title: String?
    func printTitle() {
        print(title)
    }
}

class Cache {
    var targetObjects = [String: TargetObject]()
    func lookup(key: String) -> TargetObject {
        if targetObjects.index(forKey: key) == nil {            
            return TargetObject()
        }else {
            return targetObjects[key]!
        }
        
    }
}

