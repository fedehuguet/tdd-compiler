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
    var sTemporalMemory = [ExecMemory]()
    var sLocalMemory = [ExecMemory]()
    
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
            print(sTemporalMemory)
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
        let (result, _) = findValType(address: quad.rightOperand)
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
    
   func greaterThan(quad: Quadruple){
       let (leftOperand, leftType) = findValType(address: quad.leftOperand)
       let (rightOperand, rightType) = findValType(address: quad.rightOperand)
       
       if !semanticCube.checkCube(currOperator: quad.quadOperator, leftType: leftType, rightType: rightType) {
           // TODO: There was a semantic error with the typing
       }
       var result : Any
       if leftType == .float && rightType == .float {
           result = (leftOperand as! Double) > (rightOperand as! Double)
       }
       else if leftType == .float {
           result = (leftOperand as! Double) > Double((rightOperand as! Int))
       }
       else if rightType == .float {
           result = Double((leftOperand as! Int)) > (rightOperand as! Double)
       }
       else {
           result = (leftOperand as! Int) > (rightOperand as! Int)
       }
       print(result)
       saveValue(address: quad.result, value: result)
   }
    func lessThan(quad: Quadruple){
        let (leftOperand, leftType) = findValType(address: quad.leftOperand)
        let (rightOperand, rightType) = findValType(address: quad.rightOperand)
        
        if !semanticCube.checkCube(currOperator: quad.quadOperator, leftType: leftType, rightType: rightType) {
            // TODO: There was a semantic error with the typing
        }
        var result : Any
        if leftType == .float && rightType == .float {
            result = (leftOperand as! Double) < (rightOperand as! Double)
        }
        else if leftType == .float {
            result = (leftOperand as! Double) < Double((rightOperand as! Int))
        }
        else if rightType == .float {
            result = Double((leftOperand as! Int)) < (rightOperand as! Double)
        }
        else {
            result = (leftOperand as! Int) < (rightOperand as! Int)
        }
        print(result)
        saveValue(address: quad.result, value: result)
    }
    
    func greatEq(quad: Quadruple){
        let (leftOperand, leftType) = findValType(address: quad.leftOperand)
        let (rightOperand, rightType) = findValType(address: quad.rightOperand)
        
        if !semanticCube.checkCube(currOperator: quad.quadOperator, leftType: leftType, rightType: rightType) {
            // TODO: There was a semantic error with the typing
        }
        var result : Any
        if leftType == .float && rightType == .float {
            result = (leftOperand as! Double) >= (rightOperand as! Double)
        }
        else if leftType == .float {
            result = (leftOperand as! Double) >= Double((rightOperand as! Int))
        }
        else if rightType == .float {
            result = Double((leftOperand as! Int)) >= (rightOperand as! Double)
        }
        else {
            result = (leftOperand as! Int) >= (rightOperand as! Int)
        }
        print(result)
        saveValue(address: quad.result, value: result)
    }
    
    func lessEq(quad: Quadruple){
        let (leftOperand, leftType) = findValType(address: quad.leftOperand)
        let (rightOperand, rightType) = findValType(address: quad.rightOperand)
        
        if !semanticCube.checkCube(currOperator: quad.quadOperator, leftType: leftType, rightType: rightType) {
            // TODO: There was a semantic error with the typing
        }
        var result : Any
        if leftType == .float && rightType == .float {
            result = (leftOperand as! Double) <= (rightOperand as! Double)
        }
        else if leftType == .float {
            result = (leftOperand as! Double) <= Double((rightOperand as! Int))
        }
        else if rightType == .float {
            result = Double((leftOperand as! Int)) <= (rightOperand as! Double)
        }
        else {
            result = (leftOperand as! Int) <= (rightOperand as! Int)
        }
        print(result)
        saveValue(address: quad.result, value: result)
    }
    
    func diff(quad: Quadruple){
        let (leftOperand, leftType) = findValType(address: quad.leftOperand)
        let (rightOperand, rightType) = findValType(address: quad.rightOperand)
        
        if !semanticCube.checkCube(currOperator: quad.quadOperator, leftType: leftType, rightType: rightType) {
            // TODO: There was a semantic error with the typing
        }
        var result : Any
        if leftType == .string && rightType == .string {
            result = (leftOperand as! String) != (rightOperand as! String)
        }
        else if leftType == .char && rightType == .char {
            result = (leftOperand as! Character) != (rightOperand as! Character)
        }
        else if leftType == .bool && rightType == .bool {
            result = (leftOperand as! Bool) != (rightOperand as! Bool)
        }
        else if leftType == .float && rightType == .float {
            result = (leftOperand as! Double) != (rightOperand as! Double)
        }
        else if leftType == .float {
            result = (leftOperand as! Double) != Double((rightOperand as! Int))
        }
        else if rightType == .float {
            result = Double((leftOperand as! Int)) != (rightOperand as! Double)
        }
        else {
            result = (leftOperand as! Int) != (rightOperand as! Int)
        }
        print(result)
        saveValue(address: quad.result, value: result)
    }
    
    func equal(quad: Quadruple){
        let (leftOperand, leftType) = findValType(address: quad.leftOperand)
        let (rightOperand, rightType) = findValType(address: quad.rightOperand)
        
        if !semanticCube.checkCube(currOperator: quad.quadOperator, leftType: leftType, rightType: rightType) {
            // TODO: There was a semantic error with the typing
        }
        var result : Any
        if leftType == .string && rightType == .string {
            result = (leftOperand as! String) == (rightOperand as! String)
        }
        else if leftType == .char && rightType == .char {
            result = (leftOperand as! Character) == (rightOperand as! Character)
        }
        else if leftType == .bool && rightType == .bool {
            result = (leftOperand as! Bool) == (rightOperand as! Bool)
        }
        else if leftType == .float && rightType == .float {
            result = (leftOperand as! Double) == (rightOperand as! Double)
        }
        else if leftType == .float {
            result = (leftOperand as! Double) == Double((rightOperand as! Int))
        }
        else if rightType == .float {
            result = Double((leftOperand as! Int)) == (rightOperand as! Double)
        }
        else {
            result = (leftOperand as! Int) == (rightOperand as! Int)
        }
        print(result)
        saveValue(address: quad.result, value: result)
    }
    
    func and(quad: Quadruple){
        let (leftOperand, leftType) = findValType(address: quad.leftOperand)
        let (rightOperand, rightType) = findValType(address: quad.rightOperand)
        
        if !semanticCube.checkCube(currOperator: quad.quadOperator, leftType: leftType, rightType: rightType) {
            // TODO: There was a semantic error with the typing
        }
        var result : Any
        result = (leftOperand as! Bool) && (rightOperand as! Bool)
        print(result)
        saveValue(address: quad.result, value: result)
    }
    
    func or(quad: Quadruple){
        let (leftOperand, leftType) = findValType(address: quad.leftOperand)
        let (rightOperand, rightType) = findValType(address: quad.rightOperand)
        
        if !semanticCube.checkCube(currOperator: quad.quadOperator, leftType: leftType, rightType: rightType) {
            // TODO: There was a semantic error with the typing
        }
        var result : Any
        result = (leftOperand as! Bool) || (rightOperand as! Bool)
        print(result)
        saveValue(address: quad.result, value: result)
    }
    
    
    func execute() {
        
        while currentQuadIndex < quadruples.count {
            let quad = quadruples[currentQuadIndex]
            switch quad.quadOperator {
            case "PRINT":
                print(quad)
                printFunc(quad: quad)
                currentQuadIndex = currentQuadIndex + 1
                break
            case "+":
                printQuad(quad: quad)
                add(quad: quad)
                currentQuadIndex = currentQuadIndex + 1
                break
            case "-":
                printQuad(quad: quad)
                substract(quad: quad)
                currentQuadIndex = currentQuadIndex + 1
                break
            case "*":
                printQuad(quad: quad)
                multiply(quad: quad)
                currentQuadIndex = currentQuadIndex + 1
                break
            case "/":
                printQuad(quad: quad)
                divide(quad: quad)
                currentQuadIndex = currentQuadIndex + 1
                break
            case "=":
                printQuad(quad: quad)
                asign(quad: quad)
                currentQuadIndex = currentQuadIndex + 1
                break
            case ">":
                printQuad(quad: quad)
                greaterThan(quad: quad)
                currentQuadIndex = currentQuadIndex + 1
                break
            case "<":
                printQuad(quad: quad)
                lessThan(quad: quad)
                currentQuadIndex = currentQuadIndex + 1
                break
            case ">=":
                printQuad(quad: quad)
                greatEq(quad: quad)
                currentQuadIndex = currentQuadIndex + 1
                break
            case "<=":
                printQuad(quad: quad)
                lessEq(quad: quad)
                currentQuadIndex = currentQuadIndex + 1
                break
            case "!=":
                printQuad(quad: quad)
                diff(quad: quad)
                currentQuadIndex = currentQuadIndex + 1
                break
            case "==":
                printQuad(quad: quad)
                equal(quad: quad)
                currentQuadIndex = currentQuadIndex + 1
                break
            case "&&":
                printQuad(quad: quad)
                and(quad: quad)
                currentQuadIndex = currentQuadIndex + 1
                break
            case "||":
                printQuad(quad: quad)
                or(quad: quad)
                currentQuadIndex = currentQuadIndex + 1
                break
            case "GOTO":
                printQuad(quad: quad)
                sLocalMemory.insert(ExecMemory(dirBase: 30000), at: 0)
                sTemporalMemory.insert(ExecMemory(dirBase: 20000), at: 0)
                currentQuadIndex = quad.result
                break
            case "GOTOF":
                printQuad(quad: quad)
                break
            case "VERIFY":
                printQuad(quad: quad)
                break
            case "ERA":
                printQuad(quad: quad)
                currentQuadIndex = currentQuadIndex + 1
                break
            case "GOSUB":
                printQuad(quad: quad)
                sLocalMemory.insert(ExecMemory(dirBase: 30000), at: 0)
                sTemporalMemory.insert(ExecMemory(dirBase: 20000), at: 0)
                currentQuadIndex = quad.leftOperand
                break
            case "PARAMETRO":
                printQuad(quad: quad)
                currentQuadIndex = currentQuadIndex + 1
                break
            case "RETURN":
                printQuad(quad: quad)
                currentQuadIndex = currentQuadIndex + 1
                break
            case "ENDPROC":
                printQuad(quad: quad)
                sLocalMemory.removeFirst()
                sTemporalMemory.removeFirst()
                currentQuadIndex = 200
                break
            case "END":
                printQuad(quad: quad)
                sLocalMemory.removeFirst()
                sTemporalMemory.removeFirst()
                break
            default:
                // Shoouldn't happen but maybe should do some type of error
                print("Unexpected operator")
                print(quad)
            }
        }
    }
    
}
