// Generated from tdd.g4 by ANTLR 4.7.2

import Antlr4

var symbols = SymbolTable()
var scope: String = "error"


//Stacks
var sOperators = [String]()
var sOperands = [Int]()
var sTypes = [Type]()
var arrayQuads : [Quadruple] = [Quadruple.init(quadOperator: ">", leftOperand: -2, rightOperand: -2, result: 20)]
var sJumps = [Int]() //Contains index of unfilled quadruple
var sGoto = [Int]()
var sWhile = [Int]()

var constantsTable = [Variable]()

//Memories
let globalMemory = Memory(dirBase: 0)
let constantMemory = Memory(dirBase: 10000)
let temporalMemory = Memory(dirBase: 20000)
let localMemory = Memory(dirBase: 30000)

func findType(value: String) -> Type {
    var sType : String = "int"
    if value.starts(with: "\"") {
        sType = "string"
    }
    else if value.starts(with: "\'") {
        sType = "char"
    }
    else if value == "true" || value == "false" {
        sType = "bool"
    }
    else if value.contains(".") {
        sType = "float"
    }
    return Type(type: sType)
}

func createVariable(memory: Memory, id: String, type: Type) -> Variable {
    let address: Int!
    switch type {
    case .int:
        address = memory.addInt()
    case .float:
        address = memory.addFloat()
    case .string:
        address = memory.addString()
    case .bool:
        address = memory.addBool()
    case .char:
        address = memory.addChar()
    case .error:
        address = -1
    }
    // TODO: Handle error in case the address is -1
    return Variable(name: id, type: type, address: address)
}

func solveQuad() {
    arrayQuads[sJumps.first!].fillMissingResult(result: arrayQuads.count)
}

/**
 * This class provides an empty implementation of {@link tddListener},
 * which can be extended to create a listener which only needs to handle a subset
 * of the available methods.
 */
open class tddBaseListener: tddListener {
     public init() { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterProgram(_ ctx: tddParser.ProgramContext) {
        scope = "global"
        let function = Function(name: scope, type: .int, scope: scope, address: 1)
        symbols.insert(function: function)
        
    }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitProgram(_ ctx: tddParser.ProgramContext) {
        print("---Simbolos---")
        for symbol in symbols.functionsDictionary {
            print(symbol.value.name + " " + symbol.value.type.rawValue)
            for variable in symbol.value.variables {
                print(variable.name + " " + variable.type.rawValue + " " + variable.address)
            }
        }
        print("---Constants---")
        for constant in constantsTable {
            print(constant.name + " " + constant.type.rawValue + " " + constant.address)
        }
        print("---Operands---&&---Types---")
        while !sOperands.isEmpty && !sTypes.isEmpty {
            print(sOperands.first! + " " + sTypes.first!.rawValue)
            sOperands.removeFirst()
            sTypes.removeFirst()
        }
    }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterFunction(_ ctx: tddParser.FunctionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitFunction(_ ctx: tddParser.FunctionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterHeader(_ ctx: tddParser.HeaderContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitHeader(_ ctx: tddParser.HeaderContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterHeader_body(_ ctx: tddParser.Header_bodyContext) {
//        print("inside header body")
//        print(ctx.DESCRIPTION()?.getText() ?? 2)
//        print("Params: \n")
//        for param in ctx.param() {
//            print("param desc: " + (param.DESCRIPTION()?.getText() ?? "3"))
//            print("param id: " + (param.ID()?.getText() ?? "2"))
//            print("param type: " + (param.TYPE()?.getText() ?? "2"))
//            print("")
//        }
    }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitHeader_body(_ ctx: tddParser.Header_bodyContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterParam(_ ctx: tddParser.ParamContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitParam(_ ctx: tddParser.ParamContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterReturn_test(_ ctx: tddParser.Return_testContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitReturn_test(_ ctx: tddParser.Return_testContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterTest(_ ctx: tddParser.TestContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitTest(_ ctx: tddParser.TestContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterTest_inputs(_ ctx: tddParser.Test_inputsContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitTest_inputs(_ ctx: tddParser.Test_inputsContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterFunction_dec(_ ctx: tddParser.Function_decContext) {
        guard let functionName = ctx.ID()?.getText(), let typeText = ctx.TYPE()?.getText() else {
            print("error")
            return
        }
        scope = functionName
        let function = Function(name: functionName, type: Type(type: typeText), scope: scope, address: 2)
        symbols.insert(function: function)
    }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitFunction_dec(_ ctx: tddParser.Function_decContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterVoid_function_dec(_ ctx: tddParser.Void_function_decContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitVoid_function_dec(_ ctx: tddParser.Void_function_decContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterInputs(_ ctx: tddParser.InputsContext) {
        // Var nam
        guard let name = ctx.ID()?.getText(), let type = ctx.TYPE()?.getText() else {
            // TODO: Handle possible error
            return
        }
        let variable = createVariable(memory: localMemory, id: name, type: Type(type: type))
        symbols.functionsDictionary[scope]?.variables.append(variable)
    }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitInputs(_ ctx: tddParser.InputsContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterFunction_body(_ ctx: tddParser.Function_bodyContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitFunction_body(_ ctx: tddParser.Function_bodyContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterVoid_function_body(_ ctx: tddParser.Void_function_bodyContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitVoid_function_body(_ ctx: tddParser.Void_function_bodyContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterBody(_ ctx: tddParser.BodyContext) {
        
    }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitBody(_ ctx: tddParser.BodyContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterReturn_statement(_ ctx: tddParser.Return_statementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitReturn_statement(_ ctx: tddParser.Return_statementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterMain(_ ctx: tddParser.MainContext) {
        scope = "main"
        let function = Function(name: scope, type: .int, scope: scope, address: 1)
        symbols.insert(function: function)
    }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitMain(_ ctx: tddParser.MainContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterVariable(_ ctx: tddParser.VariableContext) {    }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitVariable(_ ctx: tddParser.VariableContext) {
       
    }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterVar_declaration(_ ctx: tddParser.Var_declarationContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitVar_declaration(_ ctx: tddParser.Var_declarationContext) {
        
        // Var name
        var parent = ctx.parent
        while(!((parent as? tddParser.VariableContext) != nil)) {
            parent = parent?.parent
        }
        guard let type = (parent as! tddParser.VariableContext).TYPE(), let id = ctx.ID() else {
            print("error")
            return
        }
        let variable: Variable!
        if scope == "global" {
            variable = createVariable(memory: globalMemory, id: id.getText(), type: Type(type: type.getText()))
        } else {
               variable = createVariable(memory: localMemory, id: id.getText(), type: Type(type: type.getText()))
        }
        symbols.functionsDictionary[scope]?.variables.append(variable)
    }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterStatement(_ ctx: tddParser.StatementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitStatement(_ ctx: tddParser.StatementContext) { }
    
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    open func enterSuper_condition_check(_ ctx: tddParser.Super_condition_checkContext) { }
    
    open func exitSuper_condition_check(_ ctx: tddParser.Super_condition_checkContext) {
        let quad = Quadruple.init(quadOperator: "GOTOF", leftOperand: arrayQuads[arrayQuads.count-1].result, rightOperand: -1, result: -1)
        arrayQuads.append(quad)
        sJumps.insert(arrayQuads.count - 1, at: 0)
    }
    
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterCondition_check(_ ctx: tddParser.Condition_checkContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitCondition_check(_ ctx: tddParser.Condition_checkContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterCondition(_ ctx: tddParser.ConditionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitCondition(_ ctx: tddParser.ConditionContext) {
        //Solve previous quad
        if(!sJumps.isEmpty) {
            solveQuad()
        }
        //Solve all GOTO
        while(!sGoto.isEmpty) {
            arrayQuads[sGoto.first!].fillMissingResult(result: arrayQuads.count)
            sGoto.removeFirst()
        }
    }
    
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    open func enterElse_if_condition(_ ctx: tddParser.Else_if_conditionContext) {
        //Generate GOTO
        let quad = Quadruple.init(quadOperator: "GOTO", leftOperand: -1, rightOperand: -1, result: -1)
        arrayQuads.append(quad)
        sGoto.insert(arrayQuads.count - 1, at: 0)
        //Solve previous quad
        if(!sJumps.isEmpty) {
            solveQuad()
        }
    }
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    open func exitElse_if_condition(_ ctx: tddParser.Else_if_conditionContext) {
        //Solve previous quad
        if(!sJumps.isEmpty) {
            solveQuad()
        }
    }

    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    open func enterElse_condition(_ ctx: tddParser.Else_conditionContext) {
        //Generate GOTO
        let quad = Quadruple.init(quadOperator: "GOTO", leftOperand: -1, rightOperand: -1, result: -1)
        arrayQuads.append(quad)
        sGoto.insert(arrayQuads.count - 1, at: 0)
        //Solve previous quad
        if(!sJumps.isEmpty) {
            solveQuad()
        }
    }
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    open func exitElse_condition(_ ctx: tddParser.Else_conditionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterHiper_expresion(_ ctx: tddParser.Hiper_expresionContext) {
//        print(ctx.parent)
        if((ctx.parent as? tddParser.Condition_checkContext) != nil) {
            print("if")
            print(ctx.getText())
            print("-------------")
        } else {
            print("not if")
        }
    }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitHiper_expresion(_ ctx: tddParser.Hiper_expresionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterExpresion(_ ctx: tddParser.ExpresionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitExpresion(_ ctx: tddParser.ExpresionContext) {
        if (!sOperators.isEmpty) {
            //TODO gen quadruple with sOperators.first!
            if(sOperators.first! == "&&" || sOperators.first! == "||") {
                print(sOperators.first!)
                sOperators.removeFirst()
            }
        }
        if let parent = ctx.parent as? tddParser.Hiper_expresionContext {
            if let oper = parent.AND()?.getText() {
                sOperators.insert(oper, at:0)
            }
            else if let oper = parent.OR()?.getText() {
                sOperators.insert(oper, at:0)
            }
        }
    }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterExp(_ ctx: tddParser.ExpContext) {}
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitExp(_ ctx: tddParser.ExpContext) {
        if (!sOperators.isEmpty) {
            //TODO gen quadruple with sOperators.first!
            if(sOperators.first! == ">" || sOperators.first! == "<" || sOperators.first! == "!=") {
                print(sOperators.first!)
                sOperators.removeFirst()
            }
        }
        if let parent = ctx.parent as? tddParser.ExpresionContext {
            if let oper = parent.LESS_THAN()?.getText() {
                sOperators.insert(oper, at:0)
            }
            else if let oper = parent.GREATER_THAN()?.getText() {
                sOperators.insert(oper, at:0)
            }
            else if let oper = parent.DIFFERENT()?.getText() {
                sOperators.insert(oper, at:0)
            }
        }
    }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterTermino(_ ctx: tddParser.TerminoContext) {}
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitTermino(_ ctx: tddParser.TerminoContext) {
        if (!sOperators.isEmpty) {
            //TODO gen quadruple with sOperators.first!
            if(sOperators.first! == "+" || sOperators.first! == "-") {
                print(sOperators.first!)
                sOperators.removeFirst()
            }
        }
        if let parent = ctx.parent as? tddParser.ExpContext {
            if let oper = parent.ADD()?.getText() {
                sOperators.insert(oper, at:0)
            }
            else if let oper = parent.SUBSTRACT()?.getText() {
                sOperators.insert(oper, at:0)
            }
        }
    }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterFactor(_ ctx: tddParser.FactorContext) {
        //Check for ID
        if let id = ctx.ID()?.getText() {
            guard let variable = symbols.findID(scope: scope, id: id) else {
                //Compile error var does not exist
                return
            }
            sOperands.insert(variable.address, at:0)
            sTypes.insert(variable.type, at:0)
        }
        //Check for negative constant
        else if ctx.SUBSTRACT()?.getText() != nil {
            guard let value = ctx.VALUE()?.getText() else {
                // TODO: Erro
                return
            }
            let variable = createVariable(memory: constantMemory, id: "-\(value)", type: findType(value: value))
            constantsTable.append(variable)
            sOperands.insert(variable.address, at:0)
            sTypes.insert(variable.type, at:0)
        }
        //Check for constant
        else if let value = ctx.VALUE()?.getText() {
            let variable = createVariable(memory: constantMemory, id: value, type: findType(value: value))
  
            constantsTable.append(variable)
            sOperands.insert(variable.address, at:0)
            sTypes.insert(variable.type, at:0)
        }
    }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitFactor(_ ctx: tddParser.FactorContext) {
        if (!sOperators.isEmpty) {
            //TODO gen quadruple with sOperators.first!
            if(sOperators.first! == "*" || sOperators.first! == "/") {
                print(sOperators.first!)
                sOperators.removeFirst()
            }
        }
        if let parent = ctx.parent as? tddParser.TerminoContext {
            if let oper = parent.MULTIPLY()?.getText() {
                sOperators.insert(oper, at:0)
            }
            else if let oper = parent.DIVIDE()?.getText() {
                sOperators.insert(oper, at:0)
            }
        }
    }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterPrint(_ ctx: tddParser.PrintContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitPrint(_ ctx: tddParser.PrintContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAlgo_imprimible(_ ctx: tddParser.Algo_imprimibleContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAlgo_imprimible(_ ctx: tddParser.Algo_imprimibleContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAsignation(_ ctx: tddParser.AsignationContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAsignation(_ ctx: tddParser.AsignationContext) {
    
    }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterWhile_loop(_ ctx: tddParser.While_loopContext) {
        sWhile.insert(arrayQuads.count, at: 0)
    }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitWhile_loop(_ ctx: tddParser.While_loopContext) {
        //Generate GOTO
        let quad = Quadruple.init(quadOperator: "GOTO", leftOperand: -1, rightOperand: -1, result: sWhile.first!)
        sWhile.removeFirst()
        arrayQuads.append(quad)
        sGoto.insert(arrayQuads.count - 1, at: 0)
        //Solve previous quad
        if(!sJumps.isEmpty) {
            solveQuad()
        }
    }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterEveryRule(_ ctx: ParserRuleContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitEveryRule(_ ctx: ParserRuleContext) {
        
    }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func visitTerminal(_ node: TerminalNode) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func visitErrorNode(_ node: ErrorNode) { }
}
