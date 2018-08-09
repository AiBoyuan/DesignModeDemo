//
//  DecoratorViewController.swift
//  DesignModeDemo
//
//  Created by Aibo on 2018/7/11.
//  Copyright © 2018年 uuabc. All rights reserved.
//

import UIKit

class DecoratorViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

//        var  component = ConcreteComponent.init(cost: 0)
//        component = ConcreteComponent(cost: Coffee(10 as! Component))
//        component = ConcreteComponent(cost: Sugar(10 as! Component))
//        component = ConcreteComponent(cost: Milk(10 as! Component))
//        var c = Milk(Sugar(Coffee(19))).cost
//        print(c)
        
        
        //wcl买一辆suv
        var suv: Car = Suv(owner: "wcl")
        //装配沙发
        suv = Sofa().decorator(suv)
        //装配发动机
        suv = Engine().decorator(suv)
        //装配安全系统
        suv = Safety().decorator(suv)
        suv.showParts()
        print("一共花了\(suv.howMuch())W")
        print("\n")
        //wcl买一辆mpv
        var mpv: Car = Mpv(owner: "wcl")
        //装配发动机
        mpv = Engine().decorator(mpv)
        //装配安全系统
        mpv = Safety().decorator(mpv)
        mpv.showParts()
        print("一共花了\(mpv.howMuch())W")
        
        
        
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
