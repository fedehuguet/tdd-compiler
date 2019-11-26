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
    var currentQuadIndex = 0

    var globalMemory = ExecMemory(dirBase: 0)
    let constantMemory : ExecMemory
    var sTemporalMemory = [ExecMemory(dirBase: 20000)]
    var sLocalMemory = [ExecMemory(dirBase: 30000)]
    
    let semanticCube = SemanticCube()
    
    init(quadruples: [Quadruple]!, constantMemory: ExecMemory) {
        self.quadruples = quadruples
        self.constantMemory = constantMemory
    }
    
    func printQuad(quad: Quadruple){
        print("\(quad.leftOperand!) \(quad.quadOperator!) \(quad.rightOperand!)")
    }
    
    func findValType(address: Int) -> (Any, Type) {
        if (address >= 30000) {
            return (sLocalMemory.first?.getVal(address: address))!
        }
        else if (address >= 20000) {
            return (sTemporalMemory.first?.getVal(address: address))!
        }
        else if (address >= 10000) {
            return constantMemory.getVal(address: address)
        }
        else {
            return globalMemory.getVal(address: address)
        }
    }
    
    func saveValue(address: Int, value: Any) {
        if (address >= 30000) {
            sLocalMemory.first?.saveToValsExec(address: address, value: value)
        }
        else if (address >= 20000) {
            sTemporalMemory.first?.saveToValsExec(address: address, value: value)
        }
        else if (address >= 10000) {
            constantVals.saveToValsExec(address: address, value: value)
        }
        else {
            globalMemory.saveToValsExec(address: address, value: value)
        }
    }
    
    func printFunc(quad: Quadruple) {
        let (result, _) = findValType(address: quad.result)
        print("PRINT \(result)")
    }
    
    func add(quad: Quadruple){
        let (leftOperand, leftType) = findValType(address: quad.leftOperand)
        let (rightOperand, rightType) = findValType(address: quad.rightOperand)
        
        if !semanticCube.checkCube(currOperator: quad.quadOperator, leftType: leftType, rightType: rightType) {
            // TODO: There was a semantic error with the typing
        }
        var result : Any
        if leftType == .string && rightType == .string{
            result = (leftOperand as! String) + (rightOperand as! String)
        }
        else if leftType == .float && rightType == .float {
            result = (leftOperand as! Double) + (rightOperand as! Double)
        }
        else if leftType == .float {
            result = (leftOperand as! Double) + Double((rightOperand as! Int))
        }
        else if rightType == .float {
            result = Double((leftOperand as! Int)) + (rightOperand as! Double)
        }
        else {
            result = (leftOperand as! Int) + (rightOperand as! Int)
        }
        print(result)
        saveValue(address: quad.result, value: result)
    }
    
    func substract(quad: Quadruple){
        let (leftOperand, leftType) = findValType(address: quad.leftOperand)
        let (rightOperand, rightType) = findValType(address: quad.rightOperand)
        
        if !semanticCube.checkCube(currOperator: quad.quadOperator, leftType: leftType, rightType: rightType) {
            // TODO: There was a semantic error with the typing
        }
        var result : Any
        if leftType == .float && rightType == .float {
            result = (leftOperand as! Double) - (rightOperand as! Double)
        }
        else if leftType == .float {
            result = (leftOperand as! Double) - Double((rightOperand as! Int))
        }
        else if rightType == .float {
            result = Double((leftOperand as! Int)) - (rightOperand as! Double)
        }
        else {
            result = (leftOperand as! Int) - (rightOperand as! Int)
        }
        print(result)
        saveValue(address: quad.result, value: result)
    }
    
    func multiply(quad: Quadruple){
        let (leftOperand, leftType) = findValType(address: quad.leftOperand)
        let (rightOperand, rightType) = findValType(address: quad.rightOperand)
        
        if !semanticCube.checkCube(currOperator: quad.quadOperator, leftType: leftType, rightType: rightType) {
            // TODO: There was a semantic error with the typing
        }
        var result : Any
        if leftType == .float && rightType == .float {
            result = (leftOperand as! Double) * (rightOperand as! Double)
        }
        else if leftType == .float {
            result = (leftOperand as! Double) * Double((rightOperand as! Int))
        }
        else if rightType == .float {
            result = Double((leftOperand as! Int)) * (rightOperand as! Double)
        }
        else {
            result = (leftOperand as! Int) * (rightOperand as! Int)
        }
        print(result)
        saveValue(address: quad.result, value: result)
    }
    
    func divide(quad: Quadruple){
        let (leftOperand, leftType) = findValType(address: quad.leftOperand)
        let (rightOperand, rightType) = findValType(address: quad.rightOperand)
        
        if !semanticCube.checkCube(currOperator: quad.quadOperator, leftType: leftType, rightType: rightType) {
            // TODO: There was a semantic error with the typing
        }
        var result : Any
        if leftType == .float && rightType == .float {
            result = (leftOperand as! Double) / (rightOperand as! Double)
        }
        else if leftType == .float {
            result = (leftOperand as! Double) / Double((rightOperand as! Int))
        }
        else if rightType == .float {
            result = Double((leftOperand as! Int)) / (rightOperand as! Double)
        }
        else {
            result = (leftOperand as! Int) / (rightOperand as! Int)
        }
        print(result)
        saveValue(address: quad.result, value: result)
    }
    
    func asign(quad: Quadruple){
        let (leftOperand, _) = findValType(address: quad.leftOperand)
        print(leftOperand)
        saveValue(address: quad.result, value: leftOperand)
    }
    
   
    func execute() {
        
        while currentQuadIndex < quadruples.count {
            let quad = quadruples[currentQuadIndex]
            switch quad.quadOperator {
            case "PRINT":
                print(quad)
                printFunc(quad: quad)
            case "+":
                printQuad(quad: quad)
                add(quad: quad)
            case "-":
                printQuad(quad: quad)
                substract(quad: quad)
            case "*":
                printQuad(quad: quad)
                multiply(quad: quad)
            case "/":
                printQuad(quad: quad)
                divide(quad: quad)
            case "=":
                print(quad)
                asign(quad: quad)
            case ">":
               print(quad)
            case "<":
               print(quad)
            case "!=":
               print(quad)
            case "==":
               print(quad)
            case "&&":
                print(quad)
            case "||":
                print(quad)
            case "GOTO":
                print(quad)
            case "GOTOF":
                print(quad)
            case "VERIFY":
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
            currentQuadIndex = currentQuadIndex + 1
        }
    }
    
}
