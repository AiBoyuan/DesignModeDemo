//
//  FacedeViewController.swift
//  DesignModeDemo
//
//  Created by Aibo on 2018/7/16.
//  Copyright © 2018年 uuabc. All rights reserved.
//

import UIKit

class FacedeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let c = FacadeClient()
        c.f.simpleMethod()
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
