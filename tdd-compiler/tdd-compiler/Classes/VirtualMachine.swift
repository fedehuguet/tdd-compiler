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
    var sLocalMemory = [ExecMemory(dirBase: 30000)]
    var paramLocal = ExecMemory(dirBase: -1)
    var sTemporalMemory = [ExecMemory(dirBase: 20000)]
    var paramTemporal = ExecMemory(dirBase: -1)
    let semanticCube = SemanticCube()
    
    var sReads : [Any]
    var testInputs : Bool
    
    var sJumps = [Int]()
    
    init(quadruples: [Quadruple]!, constantMemory: ExecMemory, sReads: [Any] = [Any](), testInputs : Bool = false) {
        self.quadruples = quadruples
        self.constantMemory = constantMemory
        self.sReads = sReads
        self.testInputs = testInputs
    }
    
    func printQuad(quad: Quadruple){
        print("\(quad.leftOperand!) \(quad.quadOperator!) \(quad.rightOperand!)")
    }
    
    func findValType(address: Int) -> (Any, Type) {
        if (address < 0) {
            if (abs(address) >= 30000) {
                let (newAdd,_) = sLocalMemory.first!.getVal(address: address)
                return findValType(address: (newAdd as! Int))
            }
            else if (abs(address) >= 20000) {
                let (newAdd,_) = sTemporalMemory.first!.getVal(address: address)
                return findValType(address: (newAdd as! Int))
            }
            else if (abs(address) >= 10000) {
                let (newAdd,_) = constantMemory.getVal(address: address)
                return findValType(address: (newAdd as! Int))
            }
            else {
                let (newAdd,_) = globalMemory.getVal(address: address)
                return findValType(address: (newAdd as! Int))
            }
        }
        else {
            if (address >= 30000) {
                return sLocalMemory.first!.getVal(address: address)
            }
            else if (address >= 20000) {
                return sTemporalMemory.first!.getVal(address: address)
            }
            else if (address >= 10000) {
                return constantMemory.getVal(address: address)
            }
            else {
                return globalMemory.getVal(address: address)
            }
        }
    }
    
    func saveValue(address: Int, value: Any, param: Bool = false) {
        if (address < 0) {
            if (abs(address) >= 30000) {
                let (currAddress,_) = sLocalMemory.first!.getVal(address: address)
                return saveValue(address: (currAddress as! Int), value: value)
            }
            else if (abs(address) >= 20000) {
                let (currAddress,_) = sTemporalMemory.first!.getVal(address: address)
                return saveValue(address: (currAddress as! Int), value: value)
            }
            else if (abs(address) >= 10000) {
                constantMemory.saveToValsExec(address: address, value: value)
            }
            else {
                globalMemory.saveToValsExec(address: address, value: value)
            }
        }
        else {
            if (address >= 30000) {
                param ? paramLocal.saveToValsExec(address: address, value: value) : sLocalMemory.first!.saveToValsExec(address: address, value: value)
            }
            else if (address >= 20000) {
                param ? paramTemporal.saveToValsExec(address: address, value: value) : sTemporalMemory.first!.saveToValsExec(address: address, value: value)
            }
            else if (address >= 10000) {
                constantMemory.saveToValsExec(address: address, value: value)
            }
            else {
                globalMemory.saveToValsExec(address: address, value: value)
            }
        }
    }
    
    func readFunc(quad: Quadruple) {
        print("READING")
        let readVal = sReads.first!
        saveValue(address: quad.result, value: readVal)
        sReads.removeFirst()
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
        saveValue(address: quad.result, value: result)
    }
    
    func asign(quad: Quadruple){
        let (leftOperand, _) = findValType(address: quad.leftOperand)
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
        saveValue(address: quad.result, value: result)
    }
    
    func param_asign(quad: Quadruple){
        var curAddress = quad.leftOperand!
        var curResult = quad.result!
        for _ in 0...quad.rightOperand - 1 {
            let (leftOperand, _) = findValType(address: curAddress)
            saveValue(address: curResult, value: leftOperand, param: true)
            curAddress = curAddress + 1
            curResult = curResult + 1
        }
    }
    
    func return_func(quad: Quadruple) {
        //Asign temporal to global
        let (temporal, _) = findValType(address: quad.leftOperand)
        saveValue(address: quad.result, value: temporal)
        //Pop and jump
        currentQuadIndex = sJumps.first!
        sJumps.removeFirst()
    }
    
    func gotoF(quad: Quadruple) {
        let (boolTest, _) = findValType(address: quad.leftOperand)
        if !(boolTest as! Bool) {
            currentQuadIndex = quad.result
        }
        else {
            currentQuadIndex = currentQuadIndex + 1
        }
    }
    
    func verify(quad: Quadruple) {
        let (access, _) = findValType(address: quad.leftOperand)
        if ( (access as! Int) < quad.rightOperand || (access as! Int) > quad.result) {
            print("Access of array out of bounds")
        }
    }
    
    func saveAddressValue(address: Int, value: Any) {
        if (abs(address) >= 30000) {
            sLocalMemory.first!.saveToValsExec(address: address, value: value)
        }
        else if (abs(address) >= 20000) {
            sTemporalMemory.first!.saveToValsExec(address: address, value: value)
        }
        else if (abs(address) >= 10000) {
            constantMemory.saveToValsExec(address: address, value: value)
        }
        else {
            globalMemory.saveToValsExec(address: address, value: value)
        }
    }
    
    func addArrayBase(quad: Quadruple) {
        let (shift, _) = findValType(address: quad.leftOperand)
        let address =  abs((shift as! Int)) + quad.rightOperand
        
        saveAddressValue(address: quad.result, value: address)
    }
    
    
    func execute() {
        
        while currentQuadIndex < quadruples.count {
            let quad = quadruples[currentQuadIndex]
            switch quad.quadOperator {
            case "PRINT":
                printFunc(quad: quad)
                currentQuadIndex = currentQuadIndex + 1
                break
            case "READ":
                readFunc(quad: quad)
                currentQuadIndex = currentQuadIndex + 1
                break
            case "+":
                add(quad: quad)
                currentQuadIndex = currentQuadIndex + 1
                break
            case "-":
                substract(quad: quad)
                currentQuadIndex = currentQuadIndex + 1
                break
            case "*":
                multiply(quad: quad)
                currentQuadIndex = currentQuadIndex + 1
                break
            case "/":
                divide(quad: quad)
                currentQuadIndex = currentQuadIndex + 1
                break
            case "=":
                asign(quad: quad)
                currentQuadIndex = currentQuadIndex + 1
                break
            case ">":
                greaterThan(quad: quad)
                currentQuadIndex = currentQuadIndex + 1
                break
            case "<":
                lessThan(quad: quad)
                currentQuadIndex = currentQuadIndex + 1
                break
            case ">=":
                greatEq(quad: quad)
                currentQuadIndex = currentQuadIndex + 1
                break
            case "<=":
                lessEq(quad: quad)
                currentQuadIndex = currentQuadIndex + 1
                break
            case "!=":
                diff(quad: quad)
                currentQuadIndex = currentQuadIndex + 1
                break
            case "==":
                equal(quad: quad)
                currentQuadIndex = currentQuadIndex + 1
                break
            case "&&":
                and(quad: quad)
                currentQuadIndex = currentQuadIndex + 1
                break
            case "||":
                or(quad: quad)
                currentQuadIndex = currentQuadIndex + 1
                break
            case "GOTO":
                currentQuadIndex = quad.result
                break
            case "GOTOF":
                gotoF(quad: quad)
                break
            case "VER":
                currentQuadIndex = currentQuadIndex + 1
                break
            case "+arr":
                addArrayBase(quad: quad)
                currentQuadIndex = currentQuadIndex + 1
                break
            case "ERA":
                paramLocal = ExecMemory(dirBase: 30000)
                paramTemporal = ExecMemory(dirBase: 20000)
                currentQuadIndex = currentQuadIndex + 1
                break
            case "GOSUB":
                sLocalMemory.insert(paramLocal, at: 0)
                sTemporalMemory.insert(paramTemporal, at: 0)
                //Reset params memory
                paramLocal = ExecMemory(dirBase: -1)
                paramTemporal = ExecMemory(dirBase: -1)
                sJumps.insert(currentQuadIndex + 1, at: 0)
                currentQuadIndex = quad.leftOperand
                break
            case "PARAM":
                param_asign(quad: quad)
                currentQuadIndex = currentQuadIndex + 1
                break
            case "RETURN":
                return_func(quad: quad)
                sLocalMemory.removeFirst()
                sTemporalMemory.removeFirst()
                break
            case "ENDPROC":
                sLocalMemory.removeFirst()
                sTemporalMemory.removeFirst()
                currentQuadIndex = sJumps.first!
                sJumps.removeFirst()
                break
            case "TEST":
                if (testInputs) {
                    currentQuadIndex = currentQuadIndex + 1
                }
                else {
                    currentQuadIndex = quad.result
                }
                break
            case "END":
                sLocalMemory.removeFirst()
                sTemporalMemory.removeFirst()
                currentQuadIndex = quadruples.count
                break
            default:
                // Shoouldn't happen but maybe should do some type of error
                print("Unexpected operator")
                print(quad)
            }
        }
    }
    
}
