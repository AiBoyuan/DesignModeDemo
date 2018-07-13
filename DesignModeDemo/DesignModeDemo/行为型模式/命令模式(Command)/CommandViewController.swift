//
//  CommandViewController.swift
//  DesignModeDemo
//
//  Created by Aibo on 2018/7/11.
//  Copyright © 2018年 uuabc. All rights reserved.
//

import UIKit

class CommandViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let printA = ConcreteCommand(backup: "Default A") {
            print("A")
        }
        let i1 = Invoker(command: printA)
        i1.execute() // OUTPUT: A
        
        let printB = ConcreteCommand(backup: "Default B") {
            print("B")
        }
        let i2 = Invoker(command: printB)
        i2.execute() // OUTPUT: B
        i2.undo() // OUTPUT: Default B

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
