//
//  Memory.swift
//  tdd-compiler
//
//  Created by Tony Toussaint on 11/8/19.
//  Copyright © 2019 Tony Toussaint. All rights reserved.
//

import Foundation

class Memory {
    let dirBase : Int
    
    private let varTotal = 2000
    
    private let integerBase = 0
    private let floatBase = 2000
    private let stringBase = 4000
    private let charBase = 6000
    private let boolBase = 8000
    
    private var integerCounter = 0
    private var floatCounter = 0
    private var stringCounter = 0
    private var charCounter = 0
    private var boolCounter = 0
    
    init(dirBase: Int) {
        self.dirBase = dirBase
    }
    
    func addInt(size: Int = 1) -> Int {
        return addVar(typeBase: integerBase, typeCounter: &integerCounter, size: size)
    }
    
    func addFloat(size: Int = 1) -> Int {
        return addVar(typeBase: floatBase, typeCounter: &floatCounter, size: size)
    }
    
    func addString(size: Int = 1) -> Int {
        return addVar(typeBase: stringBase, typeCounter: &stringCounter, size: size)
    }
    
    func addChar(size: Int = 1) -> Int {
        return addVar(typeBase: charBase, typeCounter: &charCounter, size: size)
    }
    
    func addBool(size: Int = 1) -> Int {
        return addVar(typeBase: boolBase, typeCounter: &boolCounter, size: size)
    }
    
    private func addVar(typeBase: Int, typeCounter: inout Int, size: Int = 1) -> Int {
        if (typeCounter  > varTotal) {
            return -1
        }
        let retVal = dirBase + typeBase + typeCounter
        typeCounter = typeCounter + size
        return retVal
    }
    
    func clean() {
        integerCounter = 0
        floatCounter = 0
        stringCounter = 0
        charCounter = 0
        boolCounter = 0
    }
    
}
