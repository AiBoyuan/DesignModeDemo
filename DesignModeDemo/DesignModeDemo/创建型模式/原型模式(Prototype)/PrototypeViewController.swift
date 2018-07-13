//
//  PrototypeViewController.swift
//  DesignModeDemo
//
//  Created by Aibo on 2018/7/10.
//  Copyright © 2018年 uuabc. All rights reserved.
//

import UIKit

class PrototypeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let p1 = PProduct(title: "hello")
        var p2 = p1.clone() as? PProduct
        p2?.title = "world"
        
        print("p1:\(p1),p2:\(p2)")
        
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
