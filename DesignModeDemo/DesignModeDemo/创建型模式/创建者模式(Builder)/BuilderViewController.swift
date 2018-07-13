//
//  BuilderViewController.swift
//  DesignModeDemo
//
//  Created by Aibo on 2018/7/10.
//  Copyright © 2018年 uuabc. All rights reserved.
//

import UIKit

class BuilderViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let d = Director()
        let p = d.getAProduct()
        p.method1()
        
//        // 通过builder完成产品创建工作
//        let b = Builder(partA: "A", partB: "B")
//        // 这样产品只需要一个builder就可以完成制作
//        let p = BuilderProduct(builder: b)
        
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
