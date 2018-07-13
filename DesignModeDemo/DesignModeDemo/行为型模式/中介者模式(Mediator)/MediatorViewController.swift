//
//  MediatorViewController.swift
//  DesignModeDemo
//
//  Created by Aibo on 2018/7/11.
//  Copyright © 2018年 uuabc. All rights reserved.
//

import UIKit

class MediatorViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        var mediator = ConcreteMediator()
        
        let c1 = ConcreteMComponent(mediator: mediator, name: "c1")
        let c2 = ConcreteMComponent(mediator: mediator, name: "c2")
        let c3 = ConcreteMComponent(mediator: mediator, name: "c3")
        
        mediator.addReceiver(c1)
        mediator.addReceiver(c2)
        mediator.addReceiver(c3)
        
        //c1  receive:  hi
        //c2  receive:  hi
        //c3  receive:  hi
        c1.mediator?.notify(message: "hi")
        c2.mediator?.notify(message: "hi haha")

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
