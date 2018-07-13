//
//  FactoryPatternViewController.swift
//  DesignModeDemo
//
//  Created by Aibo on 2018/7/9.
//  Copyright © 2018年 uuabc. All rights reserved.
//

import UIKit

class FactoryPatternViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let shapeFactory = ShapeFactory()
        
        let shape1 = shapeFactory.getShape(shapeType: 0)
        shape1.draw()

        let shape2 = shapeFactory.getShape(shapeType: 1)
        shape2.draw()
        
        let shape3 = shapeFactory.getShape(shapeType: 2)
        shape3.draw()
        
//        let c = Client()
//        c.f.createProduct(type: 0) // get ConcreteProductA
        
        let f = Factory()
        let p1 = f.createProduct(type: 0)
        let p2 = f.createProduct(type: 1)
        
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
