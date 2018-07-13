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
        let composite = Composite()
        composite.components += [leaf1]
        composite.components += [leaf2]
        
        composite.someMethod()
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
