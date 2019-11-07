// Generated from tdd.g4 by ANTLR 4.7.2

import Antlr4

var symbols = SymbolTable()
var scope: String = "error"


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
        for symbol in symbols.functionsDictionary {
            print(symbol.value.name + " " + symbol.value.type.rawValue)
            for variable in symbol.value.variables {
                print(variable.name + " " + variable.type.rawValue)
            }
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
        print("inside header body")
        print(ctx.DESCRIPTION()?.getText() ?? 2)
        print("Params: \n")
        for param in ctx.param() {
            print("param desc: " + (param.DESCRIPTION()?.getText() ?? "3"))
            print("param id: " + (param.ID()?.getText() ?? "2"))
            print("param type: " + (param.TYPE()?.getText() ?? "2"))
            print("")
        }
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
        // Var name
        
        guard let name = ctx.ID(), let type = ctx.TYPE() else {
            return
        }
        
            let variable = Variable(name: name.getText(), type: Type(type: type.getText()), address: 2)
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
        let variable = Variable(name: id.getText(), type: Type(type: type.getText()), address: 2)
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
	open func exitCondition(_ ctx: tddParser.ConditionContext) { }

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
	open func exitExpresion(_ ctx: tddParser.ExpresionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterExp(_ ctx: tddParser.ExpContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitExp(_ ctx: tddParser.ExpContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterTermino(_ ctx: tddParser.TerminoContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitTermino(_ ctx: tddParser.TerminoContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterFactor(_ ctx: tddParser.FactorContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitFactor(_ ctx: tddParser.FactorContext) { }

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
	open func enterWhile_loop(_ ctx: tddParser.While_loopContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitWhile_loop(_ ctx: tddParser.While_loopContext) { }

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
