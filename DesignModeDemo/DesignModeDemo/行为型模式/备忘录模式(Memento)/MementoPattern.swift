//
//  MementoPattern.swift
//  DesignModeDemo
//
//  Created by Aibo on 2018/7/16.
//  Copyright © 2018年 uuabc. All rights reserved.
//

import UIKit

typealias Memento = [String: String] // chatper: level

protocol MementoConvertible {
    var memento: Memento { get }
    init?(memento: Memento)
}

class GameState: MementoConvertible {
    var memento: Memento {
        return [chapter: level]
    }
    var chapter: String
    var level: String
    
    required init?(memento: Memento) {
        self.chapter = memento.keys.first ?? ""
        self.level = memento.values.first ?? ""
    }
    init(chapter: String, level: String) {
        self.chapter = chapter
        self.level = level
    }
}

protocol CaretakerConvertible {
    static func save(memonto: Memento, for key: String)
    static func loadMemonto(for key: String) -> Memento?
}

class Caretaker: CaretakerConvertible {
    static func save(memonto: Memento, for key: String) {
        let defaults = UserDefaults.standard
        defaults.set(memonto, forKey: key)
        defaults.synchronize()
    }
    
    static func loadMemonto(for key: String) -> Memento? {
        let defaults = UserDefaults.standard
        return defaults.object(forKey: key) as? Memento
    }
    
}
