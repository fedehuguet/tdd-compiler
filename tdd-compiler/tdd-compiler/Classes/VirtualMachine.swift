//
//  VirtualMachine.swift
//  tdd-compiler
//
//  Created by Tony Toussaint on 11/20/19.
//  Copyright © 2019 Tony Toussaint. All rights reserved.
//

import Foundation

class VirtualMachine {
    let quadruples : [Quadruple]
    let currentQuadIndex = 0
    
    init(quadruples: [Quadruple]!) {
        self.quadruples = quadruples
    }
    
    func execute() {
        
        while currentQuadIndex < quadruples.count {
            let quad = quadruples[currentQuadIndex]
            switch quad.quadOperator {
            case "+":
                print(quad)
            case "*":
                print(quad)
            case "/":
                print(quad)
            case "-":
                print(quad)
            case "GOTO":
                print(quad)
            case "GOTOF":
                print(quad)
            case "=":
                print(quad)
            case "PRINT":
                print(quad)
            case "&&":
                print(quad)
            case "||":
                print(quad)
            case ">":
                print(quad)
            case "<":
                print(quad)
            case "!=":
                print(quad)
            case "==":
                print(quad)
            default:
                print("Unexpected operator")
            }
        }
        
    }
    
}
