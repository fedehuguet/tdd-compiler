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
    
    var sLocalMemory = [Memory]()
    var sTemporalMemory = [Memory]()
    
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
            case "VER":
                print(quad)
            case "ERA":
                print(quad)
            case "GOSUB":
                print(quad)
            case "PARAMETRO":
                print(quad)
            case "RETURN":
                print(quad)
            case "ENDPROC":
                print(quad)
            case "END":
                print(quad)
            default:
                // Shoouldn't happen but maybe should do some type of error
                print("Unexpected operator")
                print(quad)
            }
        }
        
    }
    
}
