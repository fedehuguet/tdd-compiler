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
    
    init(name: String, type: Type, address: Int) {
        self.name = name
        self.type = type
        self.address = address
    }
}
