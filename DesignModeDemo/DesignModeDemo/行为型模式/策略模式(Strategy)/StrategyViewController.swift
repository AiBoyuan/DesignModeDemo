//
//  StrategyViewController.swift
//  DesignModeDemo
//
//  Created by Aibo on 2018/7/30.
//  Copyright © 2018年 uuabc. All rights reserved.
//

import UIKit

class StrategyViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        Knight().attack() // output: sword
        Archer1().attack() // output: bow
        let strategy1 = Knight()
        let strategy2 = Archer1()
        
        print("===========")
        
        let conText = StrategyContext()
        conText.context(strategy: strategy1)
        conText.doSomething()
        
        conText.context(strategy: strategy2)
        conText.doSomething()
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
