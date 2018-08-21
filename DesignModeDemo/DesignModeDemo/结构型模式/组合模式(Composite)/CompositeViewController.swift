//
//  CompositeViewController.swift
//  DesignModeDemo
//
//  Created by Aibo on 2018/7/12.
//  Copyright © 2018年 uuabc. All rights reserved.
//

import UIKit

class CompositeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let leaf1 = Leaf()
        leaf1.name = "A"
        let leaf2 = Leaf()
        leaf2.name = "B"
        let leaf3 = Leaf()
        leaf3.name = "C"
        let leaf4 = Leaf()
        leaf4.name = "D"
        let leaf5 = Leaf()
        leaf5.name = "E"

        
        
        let root = Composite()
            root.name = "root"
        let branch1 = Composite()
            branch1.name = "branch1"
        let branch2 = Composite()
            branch2.name = "branch2"
        let branch3 = Composite()
            branch3.name = "branch3"

        
        branch1.components.append(leaf1)
        branch1.components.append(leaf2)
        branch2.components.append(leaf3)
        branch2.components.append(branch3)
        branch3.components.append(leaf5)
        root.components.append(branch1)
        root.components.append(branch2)
        root.components.append(leaf4)
        root.disPlay()
//        leaf1.someMethod()
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
