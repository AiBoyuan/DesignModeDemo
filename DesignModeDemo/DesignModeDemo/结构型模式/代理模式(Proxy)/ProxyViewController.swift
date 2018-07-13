//
//  ProxyViewController.swift
//  DesignModeDemo
//
//  Created by Aibo on 2018/7/10.
//  Copyright © 2018年 uuabc. All rights reserved.
//

import UIKit

class ProxyViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var p = PublicObject()
        p.operation()
        
        let peson = Person.init()
        peson.delegate = self
        peson.run(speed: 3)
        peson.talk()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ProxyViewController:PersonProtocol {
    
    func runSpeed(speed: Int) {
        print("speed is \(speed)")
    }
    
    func talk() {
        print("speak chinese")
    }
}
