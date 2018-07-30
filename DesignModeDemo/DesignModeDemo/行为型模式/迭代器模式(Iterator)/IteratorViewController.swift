//
//  IteratorViewController.swift
//  DesignModeDemo
//
//  Created by Aibo on 2018/7/30.
//  Copyright © 2018年 uuabc. All rights reserved.
//

import UIKit

class IteratorViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let c = ConcreteCollection()
        c.add(1)
        c.add(2)
        c.add(3)
        
        let iterator = c.makeIterator()
        while iterator.hasNext() {
            print(iterator.next() as Any)
        }
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
