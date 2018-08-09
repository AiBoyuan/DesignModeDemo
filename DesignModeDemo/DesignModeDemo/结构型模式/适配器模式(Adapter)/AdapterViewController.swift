//
//  AdapterViewController.swift
//  DesignModeDemo
//
//  Created by Aibo on 2018/7/10.
//  Copyright © 2018年 uuabc. All rights reserved.
//

import UIKit

class AdapterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

//        Adapter(Adaptee(value: 1)).value // "1"
        // 现有的业务罗辑
        let tg = ConcreteTarget()
        tg.request()
        
        // 增加了适配器角色后的业务逻辑（显示原有业务）
        let tg2 = Adapter()
        tg2.request()
        
        
//        let ada =  Adapter.init()
//        ada.request()
        
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
