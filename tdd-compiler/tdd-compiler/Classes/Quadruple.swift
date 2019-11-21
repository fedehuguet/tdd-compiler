//
//  Cuadruplo.swift
//  tdd-compiler
//
//  Created by Tony Toussaint on 11/10/19.
//  Copyright © 2019 Tony Toussaint. All rights reserved.
//

import Foundation

// On certain quadruples some fields are left empty, we will mark empty fields with a -1

class Quadruple {
    let quadOperator: String!
    let leftOperand: Int!
    let rightOperand: Int!
    var result: Int!
    
    init(quadOperator: String, leftOperand: Int, rightOperand: Int, result: Int) {
        self.quadOperator = quadOperator
        self.leftOperand = leftOperand
        self.rightOperand = rightOperand
        self.result = result
//        print("Quad: \(quadOperator) left: \(leftOperand) right: \(rightOperand)")
    }
    
    func fillMissingResult(result: Int) {
        self.result = result
    }
}
