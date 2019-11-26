//
//  Memory.swift
//  tdd-compiler
//
//  Created by Tony Toussaint on 11/8/19.
//  Copyright © 2019 Tony Toussaint. All rights reserved.
//

import Foundation

class ExecMemory {
    let dirBase : Int
    var values = [Int : Any]()
    
    init(dirBase : Int) {
        self.dirBase = dirBase
    }
    
    func saveToVals(address: Int, value: String) {
        if (address - self.dirBase >= 8000) {
            self.values[address] = value == "true"
        }
        else if (address - self.dirBase >= 6000) {
            self.values[address] = value as! Character
        }
        else if (address - self.dirBase >= 4000) {
            self.values[address] = value
        }
        else if (address - self.dirBase >= 2000) {
            self.values[address] = Double(value)
        }
        else {
            self.values[address] = Int(value)
        }
    }
    
    func saveToValsExec(address: Int, value: Any) {
        if (address - self.dirBase >= 8000) {
            self.values[address] = value as! Bool
        }
        else if (address - self.dirBase >= 6000) {
            self.values[address] = value as! Character
        }
        else if (address - self.dirBase >= 4000) {
            self.values[address] = value as! String
        }
        else if (address - self.dirBase >= 2000) {
            self.values[address] = value as! Double
        }
        else {
            self.values[address] = value as! Int
        }
    }
    
    func getType(address: Int) -> (Type) {
        if (address - self.dirBase >= 8000) {
            return .bool
        }
        else if (address - self.dirBase >= 6000) {
            return .char
        }
        else if (address - self.dirBase >= 4000) {
            return .string
        }
        else if (address - self.dirBase >= 2000) {
            return .float
        }
        else {
            return .int
        }
    }
    
    func getVal(address: Int) -> (Any, Type) {
        if (address - self.dirBase >= 8000) {
            return (values[address]!, .bool)
        }
        else if (address - self.dirBase >= 6000) {
            return (values[address]!, .char)
        }
        else if (address - self.dirBase >= 4000) {
            return (values[address]!, .string)
        }
        else if (address - self.dirBase >= 2000) {
            return (values[address]!, .float)
        }
        else {
            return (values[address]!, .int)
        }
    }
}
