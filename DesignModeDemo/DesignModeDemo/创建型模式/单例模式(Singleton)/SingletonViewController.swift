//
//  SingletonViewController.swift
//  DesignModeDemo
//
//  Created by Aibo on 2018/7/9.
//  Copyright © 2018年 uuabc. All rights reserved.
//

import UIKit

class SingletonViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        SingletonManager.shared.doSomeThing()
        SingletonManager2.shared.doSomeThing()
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
