//
//  FlyweightViewController.swift
//  DesignModeDemo
//
//  Created by Aibo on 2018/7/30.
//  Copyright © 2018年 uuabc. All rights reserved.
//

import UIKit

class FlyweightViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let c = Cache()
        c.targetObjects["Test"] = TargetObject(title: "Test")
        c.lookup(key: "123").printTitle() // nil
        c.lookup(key: "Test").printTitle() // Test    

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
