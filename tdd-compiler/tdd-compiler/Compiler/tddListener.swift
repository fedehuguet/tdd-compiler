// Generated from tdd.g4 by ANTLR 4.7.2
import Antlr4

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link tddParser}.
 */
public protocol tddListener: ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link tddParser#program}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterProgram(_ ctx: tddParser.ProgramContext)
	/**
	 * Exit a parse tree produced by {@link tddParser#program}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitProgram(_ ctx: tddParser.ProgramContext)
	/**
	 * Enter a parse tree produced by {@link tddParser#function}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFunction(_ ctx: tddParser.FunctionContext)
	/**
	 * Exit a parse tree produced by {@link tddParser#function}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFunction(_ ctx: tddParser.FunctionContext)
	/**
	 * Enter a parse tree produced by {@link tddParser#header}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterHeader(_ ctx: tddParser.HeaderContext)
	/**
	 * Exit a parse tree produced by {@link tddParser#header}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitHeader(_ ctx: tddParser.HeaderContext)
	/**
	 * Enter a parse tree produced by {@link tddParser#header_body}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterHeader_body(_ ctx: tddParser.Header_bodyContext)
	/**
	 * Exit a parse tree produced by {@link tddParser#header_body}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitHeader_body(_ ctx: tddParser.Header_bodyContext)
	/**
	 * Enter a parse tree produced by {@link tddParser#param}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterParam(_ ctx: tddParser.ParamContext)
	/**
	 * Exit a parse tree produced by {@link tddParser#param}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitParam(_ ctx: tddParser.ParamContext)
	/**
	 * Enter a parse tree produced by {@link tddParser#return_test}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterReturn_test(_ ctx: tddParser.Return_testContext)
	/**
	 * Exit a parse tree produced by {@link tddParser#return_test}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitReturn_test(_ ctx: tddParser.Return_testContext)
	/**
	 * Enter a parse tree produced by {@link tddParser#test}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTest(_ ctx: tddParser.TestContext)
	/**
	 * Exit a parse tree produced by {@link tddParser#test}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTest(_ ctx: tddParser.TestContext)
	/**
	 * Enter a parse tree produced by {@link tddParser#test_inputs}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTest_inputs(_ ctx: tddParser.Test_inputsContext)
	/**
	 * Exit a parse tree produced by {@link tddParser#test_inputs}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTest_inputs(_ ctx: tddParser.Test_inputsContext)
	/**
	 * Enter a parse tree produced by {@link tddParser#function_dec}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFunction_dec(_ ctx: tddParser.Function_decContext)
	/**
	 * Exit a parse tree produced by {@link tddParser#function_dec}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFunction_dec(_ ctx: tddParser.Function_decContext)
	/**
	 * Enter a parse tree produced by {@link tddParser#void_function_dec}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterVoid_function_dec(_ ctx: tddParser.Void_function_decContext)
	/**
	 * Exit a parse tree produced by {@link tddParser#void_function_dec}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitVoid_function_dec(_ ctx: tddParser.Void_function_decContext)
	/**
	 * Enter a parse tree produced by {@link tddParser#inputs}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterInputs(_ ctx: tddParser.InputsContext)
	/**
	 * Exit a parse tree produced by {@link tddParser#inputs}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitInputs(_ ctx: tddParser.InputsContext)
	/**
	 * Enter a parse tree produced by {@link tddParser#body}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterBody(_ ctx: tddParser.BodyContext)
	/**
	 * Exit a parse tree produced by {@link tddParser#body}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitBody(_ ctx: tddParser.BodyContext)
	/**
	 * Enter a parse tree produced by {@link tddParser#return_statement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterReturn_statement(_ ctx: tddParser.Return_statementContext)
	/**
	 * Exit a parse tree produced by {@link tddParser#return_statement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitReturn_statement(_ ctx: tddParser.Return_statementContext)
	/**
	 * Enter a parse tree produced by {@link tddParser#main}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterMain(_ ctx: tddParser.MainContext)
	/**
	 * Exit a parse tree produced by {@link tddParser#main}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitMain(_ ctx: tddParser.MainContext)
	/**
	 * Enter a parse tree produced by {@link tddParser#variable}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterVariable(_ ctx: tddParser.VariableContext)
	/**
	 * Exit a parse tree produced by {@link tddParser#variable}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitVariable(_ ctx: tddParser.VariableContext)
	/**
	 * Enter a parse tree produced by {@link tddParser#var_declaration}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterVar_declaration(_ ctx: tddParser.Var_declarationContext)
	/**
	 * Exit a parse tree produced by {@link tddParser#var_declaration}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitVar_declaration(_ ctx: tddParser.Var_declarationContext)
	/**
	 * Enter a parse tree produced by {@link tddParser#non_atomic}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterNon_atomic(_ ctx: tddParser.Non_atomicContext)
	/**
	 * Exit a parse tree produced by {@link tddParser#non_atomic}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitNon_atomic(_ ctx: tddParser.Non_atomicContext)
	/**
	 * Enter a parse tree produced by {@link tddParser#na_declaration}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterNa_declaration(_ ctx: tddParser.Na_declarationContext)
	/**
	 * Exit a parse tree produced by {@link tddParser#na_declaration}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitNa_declaration(_ ctx: tddParser.Na_declarationContext)
	/**
	 * Enter a parse tree produced by {@link tddParser#array_dimension_dec}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterArray_dimension_dec(_ ctx: tddParser.Array_dimension_decContext)
	/**
	 * Exit a parse tree produced by {@link tddParser#array_dimension_dec}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitArray_dimension_dec(_ ctx: tddParser.Array_dimension_decContext)
	/**
	 * Enter a parse tree produced by {@link tddParser#matrix_dimension_dec}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterMatrix_dimension_dec(_ ctx: tddParser.Matrix_dimension_decContext)
	/**
	 * Exit a parse tree produced by {@link tddParser#matrix_dimension_dec}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitMatrix_dimension_dec(_ ctx: tddParser.Matrix_dimension_decContext)
	/**
	 * Enter a parse tree produced by {@link tddParser#array_dimension}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterArray_dimension(_ ctx: tddParser.Array_dimensionContext)
	/**
	 * Exit a parse tree produced by {@link tddParser#array_dimension}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitArray_dimension(_ ctx: tddParser.Array_dimensionContext)
	/**
	 * Enter a parse tree produced by {@link tddParser#matrix_dimension}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterMatrix_dimension(_ ctx: tddParser.Matrix_dimensionContext)
	/**
	 * Exit a parse tree produced by {@link tddParser#matrix_dimension}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitMatrix_dimension(_ ctx: tddParser.Matrix_dimensionContext)
	/**
	 * Enter a parse tree produced by {@link tddParser#statement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterStatement(_ ctx: tddParser.StatementContext)
	/**
	 * Exit a parse tree produced by {@link tddParser#statement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitStatement(_ ctx: tddParser.StatementContext)
	/**
	 * Enter a parse tree produced by {@link tddParser#super_condition_check}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSuper_condition_check(_ ctx: tddParser.Super_condition_checkContext)
	/**
	 * Exit a parse tree produced by {@link tddParser#super_condition_check}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSuper_condition_check(_ ctx: tddParser.Super_condition_checkContext)
	/**
	 * Enter a parse tree produced by {@link tddParser#condition_check}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCondition_check(_ ctx: tddParser.Condition_checkContext)
	/**
	 * Exit a parse tree produced by {@link tddParser#condition_check}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCondition_check(_ ctx: tddParser.Condition_checkContext)
	/**
	 * Enter a parse tree produced by {@link tddParser#condition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCondition(_ ctx: tddParser.ConditionContext)
	/**
	 * Exit a parse tree produced by {@link tddParser#condition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCondition(_ ctx: tddParser.ConditionContext)
	/**
	 * Enter a parse tree produced by {@link tddParser#else_if_condition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterElse_if_condition(_ ctx: tddParser.Else_if_conditionContext)
	/**
	 * Exit a parse tree produced by {@link tddParser#else_if_condition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitElse_if_condition(_ ctx: tddParser.Else_if_conditionContext)
	/**
	 * Enter a parse tree produced by {@link tddParser#else_condition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterElse_condition(_ ctx: tddParser.Else_conditionContext)
	/**
	 * Exit a parse tree produced by {@link tddParser#else_condition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitElse_condition(_ ctx: tddParser.Else_conditionContext)
	/**
	 * Enter a parse tree produced by {@link tddParser#hiper_expresion}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterHiper_expresion(_ ctx: tddParser.Hiper_expresionContext)
	/**
	 * Exit a parse tree produced by {@link tddParser#hiper_expresion}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitHiper_expresion(_ ctx: tddParser.Hiper_expresionContext)
	/**
	 * Enter a parse tree produced by {@link tddParser#expresion}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterExpresion(_ ctx: tddParser.ExpresionContext)
	/**
	 * Exit a parse tree produced by {@link tddParser#expresion}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitExpresion(_ ctx: tddParser.ExpresionContext)
	/**
	 * Enter a parse tree produced by {@link tddParser#exp}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterExp(_ ctx: tddParser.ExpContext)
	/**
	 * Exit a parse tree produced by {@link tddParser#exp}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitExp(_ ctx: tddParser.ExpContext)
	/**
	 * Enter a parse tree produced by {@link tddParser#termino}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTermino(_ ctx: tddParser.TerminoContext)
	/**
	 * Exit a parse tree produced by {@link tddParser#termino}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTermino(_ ctx: tddParser.TerminoContext)
	/**
	 * Enter a parse tree produced by {@link tddParser#factor}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFactor(_ ctx: tddParser.FactorContext)
	/**
	 * Exit a parse tree produced by {@link tddParser#factor}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFactor(_ ctx: tddParser.FactorContext)
	/**
	 * Enter a parse tree produced by {@link tddParser#function_hiper_expresions}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFunction_hiper_expresions(_ ctx: tddParser.Function_hiper_expresionsContext)
	/**
	 * Exit a parse tree produced by {@link tddParser#function_hiper_expresions}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFunction_hiper_expresions(_ ctx: tddParser.Function_hiper_expresionsContext)
	/**
	 * Enter a parse tree produced by {@link tddParser#print}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPrint(_ ctx: tddParser.PrintContext)
	/**
	 * Exit a parse tree produced by {@link tddParser#print}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPrint(_ ctx: tddParser.PrintContext)
	/**
	 * Enter a parse tree produced by {@link tddParser#algo_imprimible}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAlgo_imprimible(_ ctx: tddParser.Algo_imprimibleContext)
	/**
	 * Exit a parse tree produced by {@link tddParser#algo_imprimible}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAlgo_imprimible(_ ctx: tddParser.Algo_imprimibleContext)
	/**
	 * Enter a parse tree produced by {@link tddParser#asignation}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAsignation(_ ctx: tddParser.AsignationContext)
	/**
	 * Exit a parse tree produced by {@link tddParser#asignation}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAsignation(_ ctx: tddParser.AsignationContext)
	/**
	 * Enter a parse tree produced by {@link tddParser#while_loop}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterWhile_loop(_ ctx: tddParser.While_loopContext)
	/**
	 * Exit a parse tree produced by {@link tddParser#while_loop}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitWhile_loop(_ ctx: tddParser.While_loopContext)
	/**
	 * Enter a parse tree produced by {@link tddParser#void_func_call}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterVoid_func_call(_ ctx: tddParser.Void_func_callContext)
	/**
	 * Exit a parse tree produced by {@link tddParser#void_func_call}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitVoid_func_call(_ ctx: tddParser.Void_func_callContext)
}