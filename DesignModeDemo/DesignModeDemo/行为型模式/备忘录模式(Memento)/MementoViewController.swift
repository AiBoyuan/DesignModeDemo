//
//  MementoViewController.swift
//  DesignModeDemo
//
//  Created by Aibo on 2018/7/16.
//  Copyright © 2018年 uuabc. All rights reserved.
//

import UIKit

class MementoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let g = GameState(chapter: "Prologue", level: "0")
        print("111  \(g.memento.keys) + \(g.memento.values)")
        // after a while
        g.chapter = "Second"
        g.level = "20"        
        // want a break
        Caretaker.save(memonto: g.memento, for: "gamename")
        // load game
        let gameState = Caretaker.loadMemonto(for: "gamename") // ["Second": "20"]
        
        print("222  \(gameState?.keys) + \(gameState?.values)")

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
