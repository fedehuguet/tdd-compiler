//
//  Variable.swift
//  tdd-compiler
//
//  Created by Tony Toussaint on 11/4/19.
//  Copyright © 2019 Tony Toussaint. All rights reserved.
//

import Foundation

class Variable {
    let name: String
    let type: Type
    let address: Int
    let input: Bool
    let dimensionated: Bool
    let size: Int
    let x: Int
    let y: Int
    
    
    init(name: String, type: Type, address: Int, input: Bool, dimensionated: Bool = false, size: Int =  1, x: Int = 0, y: Int = 0) {
        self.name = name
        self.type = type
        self.address = address
        self.input = input
        self.dimensionated = dimensionated
        self.size = size
        self.x = x
        self.y = y
    }
}
