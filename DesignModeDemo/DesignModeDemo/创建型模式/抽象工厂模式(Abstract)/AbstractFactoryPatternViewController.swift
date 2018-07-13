//
//  AbstractFactoryPatternViewController.swift
//  DesignModeDemo
//
//  Created by Aibo on 2018/7/10.
//  Copyright © 2018年 uuabc. All rights reserved.
//

import UIKit

class AbstractFactoryPatternViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let f = AbsFactory()
        let a1 = f.createProductA(type: 0) // get ConcreteProductA1
        let a2 = f.createProductA(type: 1) // get ConcreteProductA2
        let b1 = f.createProductB(type: 0) // get ConcreteProductB1
        let b2 = f.createProductB(type: 1) // get ConcreteProductB2
        
        ///  通过产品可以做响应的事
        a1?.method1()
        a2?.method1()
        b1?.method1()
        b2?.method1()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
