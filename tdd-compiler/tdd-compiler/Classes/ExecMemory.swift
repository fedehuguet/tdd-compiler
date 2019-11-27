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
        if (abs(address) - self.dirBase >= 8000) {
            self.values[address] = value == "true"
        }
        else if (abs(address) - self.dirBase >= 6000) {
            self.values[address] = value as! Character
        }
        else if (abs(address) - self.dirBase >= 4000) {
            let trimmedStr = value[1..<value.count-1]
            self.values[address] = trimmedStr
        }
        else if (abs(address) - self.dirBase >= 2000) {
            self.values[address] = Double(value)
        }
        else {
            self.values[address] = Int(value)
        }
    }
    
    func saveToValsExec(address: Int, value: Any) {
        if (abs(address) - self.dirBase >= 8000) {
            self.values[address] = value as! Bool
        }
        else if (abs(address) - self.dirBase >= 6000) {
            self.values[address] = value as! Character
        }
        else if (abs(address) - self.dirBase >= 4000) {
            self.values[address] = value as! String
        }
        else if (abs(address) - self.dirBase >= 2000) {
            self.values[address] = value as! Double
        }
        else {
            self.values[address] = value as! Int
        }
        
    }
    
    func getVal(address: Int) -> (Any, Type) {
        if (abs(address) - self.dirBase >= 8000) {
            return (values[address]!, .bool)
        }
        else if (abs(address) - self.dirBase >= 6000) {
            return (values[address]!, .char)
        }
        else if (abs(address) - self.dirBase >= 4000) {
            return (values[address]!, .string)
        }
        else if (abs(address) - self.dirBase >= 2000) {
            return (values[address]!, .float)
        }
        else {
            return (values[address]!, .int)
        }
    }
    
    func getAddressForVal(val: Int) -> Int {
        for (key, value) in self.values {
            guard value is Int else {
                continue
            }
            if (value as! Int) == val {
                return key
            }
        }
        return -1
    }
}
