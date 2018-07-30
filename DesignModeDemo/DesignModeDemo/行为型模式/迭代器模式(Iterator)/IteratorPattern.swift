//
//  IteratorPattern.swift
//  DesignModeDemo
//
//  Created by Aibo on 2018/7/30.
//  Copyright © 2018年 uuabc. All rights reserved.
//

import UIKit

protocol AbstractIterator {
    func hasNext() -> Bool
    func next() -> Int?
}

class ConcreteIterator: AbstractIterator {
    private var currentIndex = 0
    var elements = [Int]()
    
    
    func next() -> Int? {
        guard currentIndex < elements.count else { currentIndex = 0; return nil }
        defer { currentIndex += 1 }
        return elements[currentIndex]
    }
    
    func hasNext() -> Bool {
        guard currentIndex < elements.count else { currentIndex = 0; return false }
        return elements[currentIndex] != nil
    }
}

protocol AbstractCollection {
    func makeIterator() -> AbstractIterator
}

class ConcreteCollection: AbstractCollection {
    let iterator = ConcreteIterator()
    func add(_ e: Int) {
        iterator.elements.append(e)
    }
    func makeIterator() -> AbstractIterator {
        return iterator
    }
}

