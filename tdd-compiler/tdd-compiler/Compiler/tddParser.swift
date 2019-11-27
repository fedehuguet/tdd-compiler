// Generated from tdd.g4 by ANTLR 4.7.2
import Antlr4

open class tddParser: Parser {

	internal static var _decisionToDFA: [DFA] = {
          var decisionToDFA = [DFA]()
          let length = tddParser._ATN.getNumberOfDecisions()
          for i in 0..<length {
            decisionToDFA.append(DFA(tddParser._ATN.getDecisionState(i)!, i))
           }
           return decisionToDFA
     }()

	internal static let _sharedContextCache = PredictionContextCache()

	public
	enum Tokens: Int {
		case EOF = -1, OPEN_BLOCK = 1, CLOSE_BLOCK = 2, OPEN_BRACKET = 3, CLOSE_BRACKET = 4, 
                 OPEN_PAR = 5, CLOSE_PAR = 6, OPEN_COMMENT = 7, CLOSE_COMMENT = 8, 
                 OPEN_HEADER = 9, CLOSE_HEADER = 10, SEMI_COLON = 11, COLON = 12, 
                 ADD = 13, SUBSTRACT = 14, MULTIPLY = 15, DIVIDE = 16, LESS_THAN = 17, 
                 GREATER_THAN = 18, LESS_EQUAL = 19, GREATER_EQUAL = 20, 
                 AND = 21, OR = 22, DIFFERENT = 23, NOT = 24, EQUALITY = 25, 
                 EQUALS = 26, PARAM_HEADER = 27, RETURN_HEADER = 28, TEST_HEADER = 29, 
                 FAT_ARROW = 30, VOID = 31, MAIN = 32, RETURN = 33, WHILE = 34, 
                 IF = 35, ELSE = 36, ELSEIF = 37, PRINT = 38, READ = 39, 
                 COMMA = 40, TYPE = 41, VALUE = 42, ID = 43, CONST = 44, 
                 DESCRIPTION = 45, INT_VAL = 46, NUMBER = 47, STRING_VAL = 48, 
                 CHAR_VAL = 49, FLOAT_VAL = 50, WHITESPACE = 51, NEWLINE = 52
	}

	public
	static let RULE_program = 0, RULE_function = 1, RULE_header = 2, RULE_header_body = 3, 
            RULE_param = 4, RULE_return_test = 5, RULE_test = 6, RULE_test_inputs = 7, 
            RULE_function_dec = 8, RULE_void_function_dec = 9, RULE_inputs = 10, 
            RULE_body = 11, RULE_return_statement = 12, RULE_main = 13, 
            RULE_variable = 14, RULE_var_declaration = 15, RULE_non_atomic = 16, 
            RULE_na_declaration = 17, RULE_array_dimension_dec = 18, RULE_matrix_dimension_dec = 19, 
            RULE_array_dimension = 20, RULE_matrix_dimension = 21, RULE_statement = 22, 
            RULE_super_condition_check = 23, RULE_condition_check = 24, 
            RULE_condition = 25, RULE_else_if_condition = 26, RULE_else_condition = 27, 
            RULE_hiper_expresion = 28, RULE_expresion = 29, RULE_exp = 30, 
            RULE_termino = 31, RULE_factor = 32, RULE_function_hiper_expresions = 33, 
            RULE_print = 34, RULE_algo_imprimible = 35, RULE_asignation = 36, 
            RULE_while_loop = 37, RULE_void_func_call = 38

	public
	static let ruleNames: [String] = [
		"program", "function", "header", "header_body", "param", "return_test", 
		"test", "test_inputs", "function_dec", "void_function_dec", "inputs", 
		"body", "return_statement", "main", "variable", "var_declaration", "non_atomic", 
		"na_declaration", "array_dimension_dec", "matrix_dimension_dec", "array_dimension", 
		"matrix_dimension", "statement", "super_condition_check", "condition_check", 
		"condition", "else_if_condition", "else_condition", "hiper_expresion", 
		"expresion", "exp", "termino", "factor", "function_hiper_expresions", 
		"print", "algo_imprimible", "asignation", "while_loop", "void_func_call"
	]

	private static let _LITERAL_NAMES: [String?] = [
		nil, "'{'", "'}'", "'['", "']'", "'('", "')'", "'/*'", "'*/'", "'#*'", 
		"'*#'", "';'", "':'", "'+'", "'-'", "'*'", "'/'", "'<'", "'>'", "'<='", 
		"'>='", "'&&'", "'||'", "'!='", "'!'", "'=='", "'='", "'@param'", "'@return'", 
		"'@test'", "'=>'", "'void'", "'main'", "'return'", "'while'", "'if'", 
		"'else'", "'elseif'", "'print'", "'read'", "','"
	]
	private static let _SYMBOLIC_NAMES: [String?] = [
		nil, "OPEN_BLOCK", "CLOSE_BLOCK", "OPEN_BRACKET", "CLOSE_BRACKET", "OPEN_PAR", 
		"CLOSE_PAR", "OPEN_COMMENT", "CLOSE_COMMENT", "OPEN_HEADER", "CLOSE_HEADER", 
		"SEMI_COLON", "COLON", "ADD", "SUBSTRACT", "MULTIPLY", "DIVIDE", "LESS_THAN", 
		"GREATER_THAN", "LESS_EQUAL", "GREATER_EQUAL", "AND", "OR", "DIFFERENT", 
		"NOT", "EQUALITY", "EQUALS", "PARAM_HEADER", "RETURN_HEADER", "TEST_HEADER", 
		"FAT_ARROW", "VOID", "MAIN", "RETURN", "WHILE", "IF", "ELSE", "ELSEIF", 
		"PRINT", "READ", "COMMA", "TYPE", "VALUE", "ID", "CONST", "DESCRIPTION", 
		"INT_VAL", "NUMBER", "STRING_VAL", "CHAR_VAL", "FLOAT_VAL", "WHITESPACE", 
		"NEWLINE"
	]
	public
	static let VOCABULARY = Vocabulary(_LITERAL_NAMES, _SYMBOLIC_NAMES)

	override open
	func getGrammarFileName() -> String { return "tdd.g4" }

	override open
	func getRuleNames() -> [String] { return tddParser.ruleNames }

	override open
	func getSerializedATN() -> String { return tddParser._serializedATN }

	override open
	func getATN() -> ATN { return tddParser._ATN }


	override open
	func getVocabulary() -> Vocabulary {
	    return tddParser.VOCABULARY
	}

	override public
	init(_ input:TokenStream) throws {
	    RuntimeMetaData.checkVersion("4.7.2", RuntimeMetaData.VERSION)
		try super.init(input)
		_interp = ParserATNSimulator(self,tddParser._ATN,tddParser._decisionToDFA, tddParser._sharedContextCache)
	}


	public class ProgramContext: ParserRuleContext {
			open
			func main() -> MainContext? {
				return getRuleContext(MainContext.self, 0)
			}
			open
			func variable() -> [VariableContext] {
				return getRuleContexts(VariableContext.self)
			}
			open
			func variable(_ i: Int) -> VariableContext? {
				return getRuleContext(VariableContext.self, i)
			}
			open
			func non_atomic() -> [Non_atomicContext] {
				return getRuleContexts(Non_atomicContext.self)
			}
			open
			func non_atomic(_ i: Int) -> Non_atomicContext? {
				return getRuleContext(Non_atomicContext.self, i)
			}
			open
			func function() -> [FunctionContext] {
				return getRuleContexts(FunctionContext.self)
			}
			open
			func function(_ i: Int) -> FunctionContext? {
				return getRuleContext(FunctionContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return tddParser.RULE_program
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.enterProgram(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.exitProgram(self)
			}
		}
	}
	@discardableResult
	 open func program() throws -> ProgramContext {
		var _localctx: ProgramContext = ProgramContext(_ctx, getState())
		try enterRule(_localctx, 0, tddParser.RULE_program)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(82)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == tddParser.Tokens.TYPE.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(80)
		 		try _errHandler.sync(self)
		 		switch(try getInterpreter().adaptivePredict(_input,0, _ctx)) {
		 		case 1:
		 			setState(78)
		 			try variable()

		 			break
		 		case 2:
		 			setState(79)
		 			try non_atomic()

		 			break
		 		default: break
		 		}

		 		setState(84)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(88)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == tddParser.Tokens.OPEN_HEADER.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(85)
		 		try function()


		 		setState(90)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(91)
		 	try main()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class FunctionContext: ParserRuleContext {
			open
			func header() -> HeaderContext? {
				return getRuleContext(HeaderContext.self, 0)
			}
			open
			func function_dec() -> Function_decContext? {
				return getRuleContext(Function_decContext.self, 0)
			}
			open
			func OPEN_BLOCK() -> TerminalNode? {
				return getToken(tddParser.Tokens.OPEN_BLOCK.rawValue, 0)
			}
			open
			func body() -> BodyContext? {
				return getRuleContext(BodyContext.self, 0)
			}
			open
			func CLOSE_BLOCK() -> TerminalNode? {
				return getToken(tddParser.Tokens.CLOSE_BLOCK.rawValue, 0)
			}
			open
			func void_function_dec() -> Void_function_decContext? {
				return getRuleContext(Void_function_decContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return tddParser.RULE_function
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.enterFunction(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.exitFunction(self)
			}
		}
	}
	@discardableResult
	 open func function() throws -> FunctionContext {
		var _localctx: FunctionContext = FunctionContext(_ctx, getState())
		try enterRule(_localctx, 2, tddParser.RULE_function)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(105)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,3, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(93)
		 		try header()
		 		setState(94)
		 		try function_dec()
		 		setState(95)
		 		try match(tddParser.Tokens.OPEN_BLOCK.rawValue)
		 		setState(96)
		 		try body()
		 		setState(97)
		 		try match(tddParser.Tokens.CLOSE_BLOCK.rawValue)

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(99)
		 		try header()
		 		setState(100)
		 		try void_function_dec()
		 		setState(101)
		 		try match(tddParser.Tokens.OPEN_BLOCK.rawValue)
		 		setState(102)
		 		try body()
		 		setState(103)
		 		try match(tddParser.Tokens.CLOSE_BLOCK.rawValue)

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class HeaderContext: ParserRuleContext {
			open
			func OPEN_HEADER() -> TerminalNode? {
				return getToken(tddParser.Tokens.OPEN_HEADER.rawValue, 0)
			}
			open
			func header_body() -> Header_bodyContext? {
				return getRuleContext(Header_bodyContext.self, 0)
			}
			open
			func CLOSE_HEADER() -> TerminalNode? {
				return getToken(tddParser.Tokens.CLOSE_HEADER.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return tddParser.RULE_header
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.enterHeader(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.exitHeader(self)
			}
		}
	}
	@discardableResult
	 open func header() throws -> HeaderContext {
		var _localctx: HeaderContext = HeaderContext(_ctx, getState())
		try enterRule(_localctx, 4, tddParser.RULE_header)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(107)
		 	try match(tddParser.Tokens.OPEN_HEADER.rawValue)
		 	setState(108)
		 	try header_body()
		 	setState(109)
		 	try match(tddParser.Tokens.CLOSE_HEADER.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Header_bodyContext: ParserRuleContext {
			open
			func DESCRIPTION() -> TerminalNode? {
				return getToken(tddParser.Tokens.DESCRIPTION.rawValue, 0)
			}
			open
			func return_test() -> Return_testContext? {
				return getRuleContext(Return_testContext.self, 0)
			}
			open
			func param() -> [ParamContext] {
				return getRuleContexts(ParamContext.self)
			}
			open
			func param(_ i: Int) -> ParamContext? {
				return getRuleContext(ParamContext.self, i)
			}
			open
			func test() -> [TestContext] {
				return getRuleContexts(TestContext.self)
			}
			open
			func test(_ i: Int) -> TestContext? {
				return getRuleContext(TestContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return tddParser.RULE_header_body
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.enterHeader_body(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.exitHeader_body(self)
			}
		}
	}
	@discardableResult
	 open func header_body() throws -> Header_bodyContext {
		var _localctx: Header_bodyContext = Header_bodyContext(_ctx, getState())
		try enterRule(_localctx, 6, tddParser.RULE_header_body)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(130)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,7, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(111)
		 		try match(tddParser.Tokens.DESCRIPTION.rawValue)
		 		setState(113) 
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		repeat {
		 			setState(112)
		 			try param()


		 			setState(115); 
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 		} while (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == tddParser.Tokens.PARAM_HEADER.rawValue
		 		      return testSet
		 		 }())
		 		setState(117)
		 		try return_test()
		 		setState(119) 
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		repeat {
		 			setState(118)
		 			try test()


		 			setState(121); 
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 		} while (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == tddParser.Tokens.TEST_HEADER.rawValue
		 		      return testSet
		 		 }())

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(123)
		 		try match(tddParser.Tokens.DESCRIPTION.rawValue)
		 		setState(127)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		while (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == tddParser.Tokens.PARAM_HEADER.rawValue
		 		      return testSet
		 		 }()) {
		 			setState(124)
		 			try param()


		 			setState(129)
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 		}

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ParamContext: ParserRuleContext {
			open
			func PARAM_HEADER() -> TerminalNode? {
				return getToken(tddParser.Tokens.PARAM_HEADER.rawValue, 0)
			}
			open
			func TYPE() -> TerminalNode? {
				return getToken(tddParser.Tokens.TYPE.rawValue, 0)
			}
			open
			func ID() -> TerminalNode? {
				return getToken(tddParser.Tokens.ID.rawValue, 0)
			}
			open
			func DESCRIPTION() -> TerminalNode? {
				return getToken(tddParser.Tokens.DESCRIPTION.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return tddParser.RULE_param
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.enterParam(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.exitParam(self)
			}
		}
	}
	@discardableResult
	 open func param() throws -> ParamContext {
		var _localctx: ParamContext = ParamContext(_ctx, getState())
		try enterRule(_localctx, 8, tddParser.RULE_param)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(132)
		 	try match(tddParser.Tokens.PARAM_HEADER.rawValue)
		 	setState(133)
		 	try match(tddParser.Tokens.TYPE.rawValue)
		 	setState(134)
		 	try match(tddParser.Tokens.ID.rawValue)
		 	setState(135)
		 	try match(tddParser.Tokens.DESCRIPTION.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Return_testContext: ParserRuleContext {
			open
			func RETURN_HEADER() -> TerminalNode? {
				return getToken(tddParser.Tokens.RETURN_HEADER.rawValue, 0)
			}
			open
			func TYPE() -> TerminalNode? {
				return getToken(tddParser.Tokens.TYPE.rawValue, 0)
			}
			open
			func DESCRIPTION() -> TerminalNode? {
				return getToken(tddParser.Tokens.DESCRIPTION.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return tddParser.RULE_return_test
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.enterReturn_test(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.exitReturn_test(self)
			}
		}
	}
	@discardableResult
	 open func return_test() throws -> Return_testContext {
		var _localctx: Return_testContext = Return_testContext(_ctx, getState())
		try enterRule(_localctx, 10, tddParser.RULE_return_test)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(137)
		 	try match(tddParser.Tokens.RETURN_HEADER.rawValue)
		 	setState(138)
		 	try match(tddParser.Tokens.TYPE.rawValue)
		 	setState(139)
		 	try match(tddParser.Tokens.DESCRIPTION.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class TestContext: ParserRuleContext {
			open
			func TEST_HEADER() -> TerminalNode? {
				return getToken(tddParser.Tokens.TEST_HEADER.rawValue, 0)
			}
			open
			func OPEN_PAR() -> TerminalNode? {
				return getToken(tddParser.Tokens.OPEN_PAR.rawValue, 0)
			}
			open
			func CLOSE_PAR() -> TerminalNode? {
				return getToken(tddParser.Tokens.CLOSE_PAR.rawValue, 0)
			}
			open
			func FAT_ARROW() -> TerminalNode? {
				return getToken(tddParser.Tokens.FAT_ARROW.rawValue, 0)
			}
			open
			func VALUE() -> TerminalNode? {
				return getToken(tddParser.Tokens.VALUE.rawValue, 0)
			}
			open
			func test_inputs() -> Test_inputsContext? {
				return getRuleContext(Test_inputsContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return tddParser.RULE_test
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.enterTest(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.exitTest(self)
			}
		}
	}
	@discardableResult
	 open func test() throws -> TestContext {
		var _localctx: TestContext = TestContext(_ctx, getState())
		try enterRule(_localctx, 12, tddParser.RULE_test)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(141)
		 	try match(tddParser.Tokens.TEST_HEADER.rawValue)
		 	setState(142)
		 	try match(tddParser.Tokens.OPEN_PAR.rawValue)
		 	setState(144)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == tddParser.Tokens.VALUE.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(143)
		 		try test_inputs()

		 	}

		 	setState(146)
		 	try match(tddParser.Tokens.CLOSE_PAR.rawValue)
		 	setState(147)
		 	try match(tddParser.Tokens.FAT_ARROW.rawValue)
		 	setState(148)
		 	try match(tddParser.Tokens.VALUE.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Test_inputsContext: ParserRuleContext {
			open
			func VALUE() -> TerminalNode? {
				return getToken(tddParser.Tokens.VALUE.rawValue, 0)
			}
			open
			func COMMA() -> TerminalNode? {
				return getToken(tddParser.Tokens.COMMA.rawValue, 0)
			}
			open
			func test_inputs() -> Test_inputsContext? {
				return getRuleContext(Test_inputsContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return tddParser.RULE_test_inputs
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.enterTest_inputs(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.exitTest_inputs(self)
			}
		}
	}
	@discardableResult
	 open func test_inputs() throws -> Test_inputsContext {
		var _localctx: Test_inputsContext = Test_inputsContext(_ctx, getState())
		try enterRule(_localctx, 14, tddParser.RULE_test_inputs)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(154)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,9, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(150)
		 		try match(tddParser.Tokens.VALUE.rawValue)

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(151)
		 		try match(tddParser.Tokens.VALUE.rawValue)
		 		setState(152)
		 		try match(tddParser.Tokens.COMMA.rawValue)
		 		setState(153)
		 		try test_inputs()

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Function_decContext: ParserRuleContext {
			open
			func TYPE() -> TerminalNode? {
				return getToken(tddParser.Tokens.TYPE.rawValue, 0)
			}
			open
			func ID() -> TerminalNode? {
				return getToken(tddParser.Tokens.ID.rawValue, 0)
			}
			open
			func OPEN_PAR() -> TerminalNode? {
				return getToken(tddParser.Tokens.OPEN_PAR.rawValue, 0)
			}
			open
			func CLOSE_PAR() -> TerminalNode? {
				return getToken(tddParser.Tokens.CLOSE_PAR.rawValue, 0)
			}
			open
			func inputs() -> InputsContext? {
				return getRuleContext(InputsContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return tddParser.RULE_function_dec
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.enterFunction_dec(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.exitFunction_dec(self)
			}
		}
	}
	@discardableResult
	 open func function_dec() throws -> Function_decContext {
		var _localctx: Function_decContext = Function_decContext(_ctx, getState())
		try enterRule(_localctx, 16, tddParser.RULE_function_dec)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(156)
		 	try match(tddParser.Tokens.TYPE.rawValue)
		 	setState(157)
		 	try match(tddParser.Tokens.ID.rawValue)
		 	setState(158)
		 	try match(tddParser.Tokens.OPEN_PAR.rawValue)
		 	setState(160)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == tddParser.Tokens.TYPE.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(159)
		 		try inputs()

		 	}

		 	setState(162)
		 	try match(tddParser.Tokens.CLOSE_PAR.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Void_function_decContext: ParserRuleContext {
			open
			func VOID() -> TerminalNode? {
				return getToken(tddParser.Tokens.VOID.rawValue, 0)
			}
			open
			func ID() -> TerminalNode? {
				return getToken(tddParser.Tokens.ID.rawValue, 0)
			}
			open
			func OPEN_PAR() -> TerminalNode? {
				return getToken(tddParser.Tokens.OPEN_PAR.rawValue, 0)
			}
			open
			func CLOSE_PAR() -> TerminalNode? {
				return getToken(tddParser.Tokens.CLOSE_PAR.rawValue, 0)
			}
			open
			func inputs() -> InputsContext? {
				return getRuleContext(InputsContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return tddParser.RULE_void_function_dec
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.enterVoid_function_dec(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.exitVoid_function_dec(self)
			}
		}
	}
	@discardableResult
	 open func void_function_dec() throws -> Void_function_decContext {
		var _localctx: Void_function_decContext = Void_function_decContext(_ctx, getState())
		try enterRule(_localctx, 18, tddParser.RULE_void_function_dec)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(164)
		 	try match(tddParser.Tokens.VOID.rawValue)
		 	setState(165)
		 	try match(tddParser.Tokens.ID.rawValue)
		 	setState(166)
		 	try match(tddParser.Tokens.OPEN_PAR.rawValue)
		 	setState(168)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == tddParser.Tokens.TYPE.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(167)
		 		try inputs()

		 	}

		 	setState(170)
		 	try match(tddParser.Tokens.CLOSE_PAR.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class InputsContext: ParserRuleContext {
			open
			func TYPE() -> TerminalNode? {
				return getToken(tddParser.Tokens.TYPE.rawValue, 0)
			}
			open
			func ID() -> TerminalNode? {
				return getToken(tddParser.Tokens.ID.rawValue, 0)
			}
			open
			func COMMA() -> TerminalNode? {
				return getToken(tddParser.Tokens.COMMA.rawValue, 0)
			}
			open
			func inputs() -> InputsContext? {
				return getRuleContext(InputsContext.self, 0)
			}
			open
			func array_dimension_dec() -> Array_dimension_decContext? {
				return getRuleContext(Array_dimension_decContext.self, 0)
			}
			open
			func matrix_dimension_dec() -> Matrix_dimension_decContext? {
				return getRuleContext(Matrix_dimension_decContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return tddParser.RULE_inputs
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.enterInputs(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.exitInputs(self)
			}
		}
	}
	@discardableResult
	 open func inputs() throws -> InputsContext {
		var _localctx: InputsContext = InputsContext(_ctx, getState())
		try enterRule(_localctx, 20, tddParser.RULE_inputs)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(196)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,12, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(172)
		 		try match(tddParser.Tokens.TYPE.rawValue)
		 		setState(173)
		 		try match(tddParser.Tokens.ID.rawValue)

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(174)
		 		try match(tddParser.Tokens.TYPE.rawValue)
		 		setState(175)
		 		try match(tddParser.Tokens.ID.rawValue)
		 		setState(176)
		 		try match(tddParser.Tokens.COMMA.rawValue)
		 		setState(177)
		 		try inputs()

		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(178)
		 		try match(tddParser.Tokens.TYPE.rawValue)
		 		setState(179)
		 		try match(tddParser.Tokens.ID.rawValue)
		 		setState(180)
		 		try array_dimension_dec()

		 		break
		 	case 4:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(181)
		 		try match(tddParser.Tokens.TYPE.rawValue)
		 		setState(182)
		 		try match(tddParser.Tokens.ID.rawValue)
		 		setState(183)
		 		try array_dimension_dec()
		 		setState(184)
		 		try match(tddParser.Tokens.COMMA.rawValue)
		 		setState(185)
		 		try inputs()

		 		break
		 	case 5:
		 		try enterOuterAlt(_localctx, 5)
		 		setState(187)
		 		try match(tddParser.Tokens.TYPE.rawValue)
		 		setState(188)
		 		try match(tddParser.Tokens.ID.rawValue)
		 		setState(189)
		 		try matrix_dimension_dec()

		 		break
		 	case 6:
		 		try enterOuterAlt(_localctx, 6)
		 		setState(190)
		 		try match(tddParser.Tokens.TYPE.rawValue)
		 		setState(191)
		 		try match(tddParser.Tokens.ID.rawValue)
		 		setState(192)
		 		try matrix_dimension_dec()
		 		setState(193)
		 		try match(tddParser.Tokens.COMMA.rawValue)
		 		setState(194)
		 		try inputs()

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class BodyContext: ParserRuleContext {
			open
			func variable() -> [VariableContext] {
				return getRuleContexts(VariableContext.self)
			}
			open
			func variable(_ i: Int) -> VariableContext? {
				return getRuleContext(VariableContext.self, i)
			}
			open
			func non_atomic() -> [Non_atomicContext] {
				return getRuleContexts(Non_atomicContext.self)
			}
			open
			func non_atomic(_ i: Int) -> Non_atomicContext? {
				return getRuleContext(Non_atomicContext.self, i)
			}
			open
			func statement() -> [StatementContext] {
				return getRuleContexts(StatementContext.self)
			}
			open
			func statement(_ i: Int) -> StatementContext? {
				return getRuleContext(StatementContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return tddParser.RULE_body
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.enterBody(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.exitBody(self)
			}
		}
	}
	@discardableResult
	 open func body() throws -> BodyContext {
		var _localctx: BodyContext = BodyContext(_ctx, getState())
		try enterRule(_localctx, 22, tddParser.RULE_body)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(202)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == tddParser.Tokens.TYPE.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(200)
		 		try _errHandler.sync(self)
		 		switch(try getInterpreter().adaptivePredict(_input,13, _ctx)) {
		 		case 1:
		 			setState(198)
		 			try variable()

		 			break
		 		case 2:
		 			setState(199)
		 			try non_atomic()

		 			break
		 		default: break
		 		}

		 		setState(204)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(208)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, tddParser.Tokens.RETURN.rawValue,tddParser.Tokens.WHILE.rawValue,tddParser.Tokens.IF.rawValue,tddParser.Tokens.PRINT.rawValue,tddParser.Tokens.ID.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	      return testSet
		 	 }()) {
		 		setState(205)
		 		try statement()


		 		setState(210)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Return_statementContext: ParserRuleContext {
			open
			func RETURN() -> TerminalNode? {
				return getToken(tddParser.Tokens.RETURN.rawValue, 0)
			}
			open
			func hiper_expresion() -> Hiper_expresionContext? {
				return getRuleContext(Hiper_expresionContext.self, 0)
			}
			open
			func SEMI_COLON() -> TerminalNode? {
				return getToken(tddParser.Tokens.SEMI_COLON.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return tddParser.RULE_return_statement
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.enterReturn_statement(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.exitReturn_statement(self)
			}
		}
	}
	@discardableResult
	 open func return_statement() throws -> Return_statementContext {
		var _localctx: Return_statementContext = Return_statementContext(_ctx, getState())
		try enterRule(_localctx, 24, tddParser.RULE_return_statement)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(211)
		 	try match(tddParser.Tokens.RETURN.rawValue)
		 	setState(212)
		 	try hiper_expresion()
		 	setState(213)
		 	try match(tddParser.Tokens.SEMI_COLON.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class MainContext: ParserRuleContext {
			open
			func MAIN() -> TerminalNode? {
				return getToken(tddParser.Tokens.MAIN.rawValue, 0)
			}
			open
			func OPEN_PAR() -> TerminalNode? {
				return getToken(tddParser.Tokens.OPEN_PAR.rawValue, 0)
			}
			open
			func CLOSE_PAR() -> TerminalNode? {
				return getToken(tddParser.Tokens.CLOSE_PAR.rawValue, 0)
			}
			open
			func OPEN_BLOCK() -> TerminalNode? {
				return getToken(tddParser.Tokens.OPEN_BLOCK.rawValue, 0)
			}
			open
			func body() -> BodyContext? {
				return getRuleContext(BodyContext.self, 0)
			}
			open
			func CLOSE_BLOCK() -> TerminalNode? {
				return getToken(tddParser.Tokens.CLOSE_BLOCK.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return tddParser.RULE_main
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.enterMain(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.exitMain(self)
			}
		}
	}
	@discardableResult
	 open func main() throws -> MainContext {
		var _localctx: MainContext = MainContext(_ctx, getState())
		try enterRule(_localctx, 26, tddParser.RULE_main)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(215)
		 	try match(tddParser.Tokens.MAIN.rawValue)
		 	setState(216)
		 	try match(tddParser.Tokens.OPEN_PAR.rawValue)
		 	setState(217)
		 	try match(tddParser.Tokens.CLOSE_PAR.rawValue)
		 	setState(218)
		 	try match(tddParser.Tokens.OPEN_BLOCK.rawValue)
		 	setState(219)
		 	try body()
		 	setState(220)
		 	try match(tddParser.Tokens.CLOSE_BLOCK.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class VariableContext: ParserRuleContext {
			open
			func TYPE() -> TerminalNode? {
				return getToken(tddParser.Tokens.TYPE.rawValue, 0)
			}
			open
			func var_declaration() -> [Var_declarationContext] {
				return getRuleContexts(Var_declarationContext.self)
			}
			open
			func var_declaration(_ i: Int) -> Var_declarationContext? {
				return getRuleContext(Var_declarationContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return tddParser.RULE_variable
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.enterVariable(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.exitVariable(self)
			}
		}
	}
	@discardableResult
	 open func variable() throws -> VariableContext {
		var _localctx: VariableContext = VariableContext(_ctx, getState())
		try enterRule(_localctx, 28, tddParser.RULE_variable)
		defer {
	    		try! exitRule()
	    }
		do {
			var _alt:Int
		 	try enterOuterAlt(_localctx, 1)
		 	setState(222)
		 	try match(tddParser.Tokens.TYPE.rawValue)
		 	setState(224); 
		 	try _errHandler.sync(self)
		 	_alt = 1;
		 	repeat {
		 		switch (_alt) {
		 		case 1:
		 			setState(223)
		 			try var_declaration()


		 			break
		 		default:
		 			throw ANTLRException.recognition(e: NoViableAltException(self))
		 		}
		 		setState(226); 
		 		try _errHandler.sync(self)
		 		_alt = try getInterpreter().adaptivePredict(_input,16,_ctx)
		 	} while (_alt != 2 && _alt !=  ATN.INVALID_ALT_NUMBER)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Var_declarationContext: ParserRuleContext {
			open
			func ID() -> TerminalNode? {
				return getToken(tddParser.Tokens.ID.rawValue, 0)
			}
			open
			func SEMI_COLON() -> TerminalNode? {
				return getToken(tddParser.Tokens.SEMI_COLON.rawValue, 0)
			}
			open
			func COMMA() -> TerminalNode? {
				return getToken(tddParser.Tokens.COMMA.rawValue, 0)
			}
			open
			func var_declaration() -> Var_declarationContext? {
				return getRuleContext(Var_declarationContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return tddParser.RULE_var_declaration
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.enterVar_declaration(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.exitVar_declaration(self)
			}
		}
	}
	@discardableResult
	 open func var_declaration() throws -> Var_declarationContext {
		var _localctx: Var_declarationContext = Var_declarationContext(_ctx, getState())
		try enterRule(_localctx, 30, tddParser.RULE_var_declaration)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(233)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,17, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(228)
		 		try match(tddParser.Tokens.ID.rawValue)
		 		setState(229)
		 		try match(tddParser.Tokens.SEMI_COLON.rawValue)

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(230)
		 		try match(tddParser.Tokens.ID.rawValue)
		 		setState(231)
		 		try match(tddParser.Tokens.COMMA.rawValue)
		 		setState(232)
		 		try var_declaration()

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Non_atomicContext: ParserRuleContext {
			open
			func TYPE() -> TerminalNode? {
				return getToken(tddParser.Tokens.TYPE.rawValue, 0)
			}
			open
			func na_declaration() -> [Na_declarationContext] {
				return getRuleContexts(Na_declarationContext.self)
			}
			open
			func na_declaration(_ i: Int) -> Na_declarationContext? {
				return getRuleContext(Na_declarationContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return tddParser.RULE_non_atomic
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.enterNon_atomic(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.exitNon_atomic(self)
			}
		}
	}
	@discardableResult
	 open func non_atomic() throws -> Non_atomicContext {
		var _localctx: Non_atomicContext = Non_atomicContext(_ctx, getState())
		try enterRule(_localctx, 32, tddParser.RULE_non_atomic)
		defer {
	    		try! exitRule()
	    }
		do {
			var _alt:Int
		 	try enterOuterAlt(_localctx, 1)
		 	setState(235)
		 	try match(tddParser.Tokens.TYPE.rawValue)
		 	setState(237); 
		 	try _errHandler.sync(self)
		 	_alt = 1;
		 	repeat {
		 		switch (_alt) {
		 		case 1:
		 			setState(236)
		 			try na_declaration()


		 			break
		 		default:
		 			throw ANTLRException.recognition(e: NoViableAltException(self))
		 		}
		 		setState(239); 
		 		try _errHandler.sync(self)
		 		_alt = try getInterpreter().adaptivePredict(_input,18,_ctx)
		 	} while (_alt != 2 && _alt !=  ATN.INVALID_ALT_NUMBER)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Na_declarationContext: ParserRuleContext {
			open
			func ID() -> TerminalNode? {
				return getToken(tddParser.Tokens.ID.rawValue, 0)
			}
			open
			func array_dimension_dec() -> Array_dimension_decContext? {
				return getRuleContext(Array_dimension_decContext.self, 0)
			}
			open
			func SEMI_COLON() -> TerminalNode? {
				return getToken(tddParser.Tokens.SEMI_COLON.rawValue, 0)
			}
			open
			func COMMA() -> TerminalNode? {
				return getToken(tddParser.Tokens.COMMA.rawValue, 0)
			}
			open
			func na_declaration() -> Na_declarationContext? {
				return getRuleContext(Na_declarationContext.self, 0)
			}
			open
			func matrix_dimension_dec() -> Matrix_dimension_decContext? {
				return getRuleContext(Matrix_dimension_decContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return tddParser.RULE_na_declaration
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.enterNa_declaration(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.exitNa_declaration(self)
			}
		}
	}
	@discardableResult
	 open func na_declaration() throws -> Na_declarationContext {
		var _localctx: Na_declarationContext = Na_declarationContext(_ctx, getState())
		try enterRule(_localctx, 34, tddParser.RULE_na_declaration)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(259)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,19, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(241)
		 		try match(tddParser.Tokens.ID.rawValue)
		 		setState(242)
		 		try array_dimension_dec()
		 		setState(243)
		 		try match(tddParser.Tokens.SEMI_COLON.rawValue)

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(245)
		 		try match(tddParser.Tokens.ID.rawValue)
		 		setState(246)
		 		try array_dimension_dec()
		 		setState(247)
		 		try match(tddParser.Tokens.COMMA.rawValue)
		 		setState(248)
		 		try na_declaration()

		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(250)
		 		try match(tddParser.Tokens.ID.rawValue)
		 		setState(251)
		 		try matrix_dimension_dec()
		 		setState(252)
		 		try match(tddParser.Tokens.SEMI_COLON.rawValue)

		 		break
		 	case 4:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(254)
		 		try match(tddParser.Tokens.ID.rawValue)
		 		setState(255)
		 		try matrix_dimension_dec()
		 		setState(256)
		 		try match(tddParser.Tokens.COMMA.rawValue)
		 		setState(257)
		 		try na_declaration()

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Array_dimension_decContext: ParserRuleContext {
			open
			func OPEN_BRACKET() -> TerminalNode? {
				return getToken(tddParser.Tokens.OPEN_BRACKET.rawValue, 0)
			}
			open
			func VALUE() -> TerminalNode? {
				return getToken(tddParser.Tokens.VALUE.rawValue, 0)
			}
			open
			func CLOSE_BRACKET() -> TerminalNode? {
				return getToken(tddParser.Tokens.CLOSE_BRACKET.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return tddParser.RULE_array_dimension_dec
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.enterArray_dimension_dec(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.exitArray_dimension_dec(self)
			}
		}
	}
	@discardableResult
	 open func array_dimension_dec() throws -> Array_dimension_decContext {
		var _localctx: Array_dimension_decContext = Array_dimension_decContext(_ctx, getState())
		try enterRule(_localctx, 36, tddParser.RULE_array_dimension_dec)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(261)
		 	try match(tddParser.Tokens.OPEN_BRACKET.rawValue)
		 	setState(262)
		 	try match(tddParser.Tokens.VALUE.rawValue)
		 	setState(263)
		 	try match(tddParser.Tokens.CLOSE_BRACKET.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Matrix_dimension_decContext: ParserRuleContext {
			open
			func OPEN_BRACKET() -> [TerminalNode] {
				return getTokens(tddParser.Tokens.OPEN_BRACKET.rawValue)
			}
			open
			func OPEN_BRACKET(_ i:Int) -> TerminalNode? {
				return getToken(tddParser.Tokens.OPEN_BRACKET.rawValue, i)
			}
			open
			func VALUE() -> [TerminalNode] {
				return getTokens(tddParser.Tokens.VALUE.rawValue)
			}
			open
			func VALUE(_ i:Int) -> TerminalNode? {
				return getToken(tddParser.Tokens.VALUE.rawValue, i)
			}
			open
			func CLOSE_BRACKET() -> [TerminalNode] {
				return getTokens(tddParser.Tokens.CLOSE_BRACKET.rawValue)
			}
			open
			func CLOSE_BRACKET(_ i:Int) -> TerminalNode? {
				return getToken(tddParser.Tokens.CLOSE_BRACKET.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return tddParser.RULE_matrix_dimension_dec
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.enterMatrix_dimension_dec(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.exitMatrix_dimension_dec(self)
			}
		}
	}
	@discardableResult
	 open func matrix_dimension_dec() throws -> Matrix_dimension_decContext {
		var _localctx: Matrix_dimension_decContext = Matrix_dimension_decContext(_ctx, getState())
		try enterRule(_localctx, 38, tddParser.RULE_matrix_dimension_dec)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(265)
		 	try match(tddParser.Tokens.OPEN_BRACKET.rawValue)
		 	setState(266)
		 	try match(tddParser.Tokens.VALUE.rawValue)
		 	setState(267)
		 	try match(tddParser.Tokens.CLOSE_BRACKET.rawValue)
		 	setState(268)
		 	try match(tddParser.Tokens.OPEN_BRACKET.rawValue)
		 	setState(269)
		 	try match(tddParser.Tokens.VALUE.rawValue)
		 	setState(270)
		 	try match(tddParser.Tokens.CLOSE_BRACKET.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Array_dimensionContext: ParserRuleContext {
			open
			func OPEN_BRACKET() -> TerminalNode? {
				return getToken(tddParser.Tokens.OPEN_BRACKET.rawValue, 0)
			}
			open
			func hiper_expresion() -> Hiper_expresionContext? {
				return getRuleContext(Hiper_expresionContext.self, 0)
			}
			open
			func CLOSE_BRACKET() -> TerminalNode? {
				return getToken(tddParser.Tokens.CLOSE_BRACKET.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return tddParser.RULE_array_dimension
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.enterArray_dimension(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.exitArray_dimension(self)
			}
		}
	}
	@discardableResult
	 open func array_dimension() throws -> Array_dimensionContext {
		var _localctx: Array_dimensionContext = Array_dimensionContext(_ctx, getState())
		try enterRule(_localctx, 40, tddParser.RULE_array_dimension)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(272)
		 	try match(tddParser.Tokens.OPEN_BRACKET.rawValue)
		 	setState(273)
		 	try hiper_expresion()
		 	setState(274)
		 	try match(tddParser.Tokens.CLOSE_BRACKET.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Matrix_dimensionContext: ParserRuleContext {
			open
			func OPEN_BRACKET() -> [TerminalNode] {
				return getTokens(tddParser.Tokens.OPEN_BRACKET.rawValue)
			}
			open
			func OPEN_BRACKET(_ i:Int) -> TerminalNode? {
				return getToken(tddParser.Tokens.OPEN_BRACKET.rawValue, i)
			}
			open
			func hiper_expresion() -> [Hiper_expresionContext] {
				return getRuleContexts(Hiper_expresionContext.self)
			}
			open
			func hiper_expresion(_ i: Int) -> Hiper_expresionContext? {
				return getRuleContext(Hiper_expresionContext.self, i)
			}
			open
			func CLOSE_BRACKET() -> [TerminalNode] {
				return getTokens(tddParser.Tokens.CLOSE_BRACKET.rawValue)
			}
			open
			func CLOSE_BRACKET(_ i:Int) -> TerminalNode? {
				return getToken(tddParser.Tokens.CLOSE_BRACKET.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return tddParser.RULE_matrix_dimension
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.enterMatrix_dimension(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.exitMatrix_dimension(self)
			}
		}
	}
	@discardableResult
	 open func matrix_dimension() throws -> Matrix_dimensionContext {
		var _localctx: Matrix_dimensionContext = Matrix_dimensionContext(_ctx, getState())
		try enterRule(_localctx, 42, tddParser.RULE_matrix_dimension)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(276)
		 	try match(tddParser.Tokens.OPEN_BRACKET.rawValue)
		 	setState(277)
		 	try hiper_expresion()
		 	setState(278)
		 	try match(tddParser.Tokens.CLOSE_BRACKET.rawValue)
		 	setState(279)
		 	try match(tddParser.Tokens.OPEN_BRACKET.rawValue)
		 	setState(280)
		 	try hiper_expresion()
		 	setState(281)
		 	try match(tddParser.Tokens.CLOSE_BRACKET.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class StatementContext: ParserRuleContext {
			open
			func asignation() -> AsignationContext? {
				return getRuleContext(AsignationContext.self, 0)
			}
			open
			func condition() -> ConditionContext? {
				return getRuleContext(ConditionContext.self, 0)
			}
			open
			func print() -> PrintContext? {
				return getRuleContext(PrintContext.self, 0)
			}
			open
			func while_loop() -> While_loopContext? {
				return getRuleContext(While_loopContext.self, 0)
			}
			open
			func void_func_call() -> Void_func_callContext? {
				return getRuleContext(Void_func_callContext.self, 0)
			}
			open
			func return_statement() -> Return_statementContext? {
				return getRuleContext(Return_statementContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return tddParser.RULE_statement
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.enterStatement(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.exitStatement(self)
			}
		}
	}
	@discardableResult
	 open func statement() throws -> StatementContext {
		var _localctx: StatementContext = StatementContext(_ctx, getState())
		try enterRule(_localctx, 44, tddParser.RULE_statement)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(289)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,20, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(283)
		 		try asignation()

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(284)
		 		try condition()

		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(285)
		 		try print()

		 		break
		 	case 4:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(286)
		 		try while_loop()

		 		break
		 	case 5:
		 		try enterOuterAlt(_localctx, 5)
		 		setState(287)
		 		try void_func_call()

		 		break
		 	case 6:
		 		try enterOuterAlt(_localctx, 6)
		 		setState(288)
		 		try return_statement()

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Super_condition_checkContext: ParserRuleContext {
			open
			func condition_check() -> Condition_checkContext? {
				return getRuleContext(Condition_checkContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return tddParser.RULE_super_condition_check
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.enterSuper_condition_check(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.exitSuper_condition_check(self)
			}
		}
	}
	@discardableResult
	 open func super_condition_check() throws -> Super_condition_checkContext {
		var _localctx: Super_condition_checkContext = Super_condition_checkContext(_ctx, getState())
		try enterRule(_localctx, 46, tddParser.RULE_super_condition_check)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(291)
		 	try condition_check()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Condition_checkContext: ParserRuleContext {
			open
			func OPEN_PAR() -> TerminalNode? {
				return getToken(tddParser.Tokens.OPEN_PAR.rawValue, 0)
			}
			open
			func hiper_expresion() -> Hiper_expresionContext? {
				return getRuleContext(Hiper_expresionContext.self, 0)
			}
			open
			func CLOSE_PAR() -> TerminalNode? {
				return getToken(tddParser.Tokens.CLOSE_PAR.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return tddParser.RULE_condition_check
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.enterCondition_check(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.exitCondition_check(self)
			}
		}
	}
	@discardableResult
	 open func condition_check() throws -> Condition_checkContext {
		var _localctx: Condition_checkContext = Condition_checkContext(_ctx, getState())
		try enterRule(_localctx, 48, tddParser.RULE_condition_check)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(293)
		 	try match(tddParser.Tokens.OPEN_PAR.rawValue)
		 	setState(294)
		 	try hiper_expresion()
		 	setState(295)
		 	try match(tddParser.Tokens.CLOSE_PAR.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ConditionContext: ParserRuleContext {
			open
			func IF() -> TerminalNode? {
				return getToken(tddParser.Tokens.IF.rawValue, 0)
			}
			open
			func super_condition_check() -> Super_condition_checkContext? {
				return getRuleContext(Super_condition_checkContext.self, 0)
			}
			open
			func OPEN_BLOCK() -> TerminalNode? {
				return getToken(tddParser.Tokens.OPEN_BLOCK.rawValue, 0)
			}
			open
			func CLOSE_BLOCK() -> TerminalNode? {
				return getToken(tddParser.Tokens.CLOSE_BLOCK.rawValue, 0)
			}
			open
			func statement() -> [StatementContext] {
				return getRuleContexts(StatementContext.self)
			}
			open
			func statement(_ i: Int) -> StatementContext? {
				return getRuleContext(StatementContext.self, i)
			}
			open
			func else_if_condition() -> [Else_if_conditionContext] {
				return getRuleContexts(Else_if_conditionContext.self)
			}
			open
			func else_if_condition(_ i: Int) -> Else_if_conditionContext? {
				return getRuleContext(Else_if_conditionContext.self, i)
			}
			open
			func else_condition() -> Else_conditionContext? {
				return getRuleContext(Else_conditionContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return tddParser.RULE_condition
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.enterCondition(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.exitCondition(self)
			}
		}
	}
	@discardableResult
	 open func condition() throws -> ConditionContext {
		var _localctx: ConditionContext = ConditionContext(_ctx, getState())
		try enterRule(_localctx, 50, tddParser.RULE_condition)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(297)
		 	try match(tddParser.Tokens.IF.rawValue)
		 	setState(298)
		 	try super_condition_check()
		 	setState(299)
		 	try match(tddParser.Tokens.OPEN_BLOCK.rawValue)
		 	setState(303)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, tddParser.Tokens.RETURN.rawValue,tddParser.Tokens.WHILE.rawValue,tddParser.Tokens.IF.rawValue,tddParser.Tokens.PRINT.rawValue,tddParser.Tokens.ID.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	      return testSet
		 	 }()) {
		 		setState(300)
		 		try statement()


		 		setState(305)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(306)
		 	try match(tddParser.Tokens.CLOSE_BLOCK.rawValue)
		 	setState(310)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == tddParser.Tokens.ELSEIF.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(307)
		 		try else_if_condition()


		 		setState(312)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(314)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == tddParser.Tokens.ELSE.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(313)
		 		try else_condition()

		 	}


		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Else_if_conditionContext: ParserRuleContext {
			open
			func ELSEIF() -> TerminalNode? {
				return getToken(tddParser.Tokens.ELSEIF.rawValue, 0)
			}
			open
			func super_condition_check() -> Super_condition_checkContext? {
				return getRuleContext(Super_condition_checkContext.self, 0)
			}
			open
			func OPEN_BLOCK() -> TerminalNode? {
				return getToken(tddParser.Tokens.OPEN_BLOCK.rawValue, 0)
			}
			open
			func CLOSE_BLOCK() -> TerminalNode? {
				return getToken(tddParser.Tokens.CLOSE_BLOCK.rawValue, 0)
			}
			open
			func statement() -> [StatementContext] {
				return getRuleContexts(StatementContext.self)
			}
			open
			func statement(_ i: Int) -> StatementContext? {
				return getRuleContext(StatementContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return tddParser.RULE_else_if_condition
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.enterElse_if_condition(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.exitElse_if_condition(self)
			}
		}
	}
	@discardableResult
	 open func else_if_condition() throws -> Else_if_conditionContext {
		var _localctx: Else_if_conditionContext = Else_if_conditionContext(_ctx, getState())
		try enterRule(_localctx, 52, tddParser.RULE_else_if_condition)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(316)
		 	try match(tddParser.Tokens.ELSEIF.rawValue)
		 	setState(317)
		 	try super_condition_check()
		 	setState(318)
		 	try match(tddParser.Tokens.OPEN_BLOCK.rawValue)
		 	setState(322)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, tddParser.Tokens.RETURN.rawValue,tddParser.Tokens.WHILE.rawValue,tddParser.Tokens.IF.rawValue,tddParser.Tokens.PRINT.rawValue,tddParser.Tokens.ID.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	      return testSet
		 	 }()) {
		 		setState(319)
		 		try statement()


		 		setState(324)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(325)
		 	try match(tddParser.Tokens.CLOSE_BLOCK.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Else_conditionContext: ParserRuleContext {
			open
			func ELSE() -> TerminalNode? {
				return getToken(tddParser.Tokens.ELSE.rawValue, 0)
			}
			open
			func OPEN_BLOCK() -> TerminalNode? {
				return getToken(tddParser.Tokens.OPEN_BLOCK.rawValue, 0)
			}
			open
			func CLOSE_BLOCK() -> TerminalNode? {
				return getToken(tddParser.Tokens.CLOSE_BLOCK.rawValue, 0)
			}
			open
			func statement() -> [StatementContext] {
				return getRuleContexts(StatementContext.self)
			}
			open
			func statement(_ i: Int) -> StatementContext? {
				return getRuleContext(StatementContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return tddParser.RULE_else_condition
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.enterElse_condition(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.exitElse_condition(self)
			}
		}
	}
	@discardableResult
	 open func else_condition() throws -> Else_conditionContext {
		var _localctx: Else_conditionContext = Else_conditionContext(_ctx, getState())
		try enterRule(_localctx, 54, tddParser.RULE_else_condition)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(327)
		 	try match(tddParser.Tokens.ELSE.rawValue)
		 	setState(328)
		 	try match(tddParser.Tokens.OPEN_BLOCK.rawValue)
		 	setState(332)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, tddParser.Tokens.RETURN.rawValue,tddParser.Tokens.WHILE.rawValue,tddParser.Tokens.IF.rawValue,tddParser.Tokens.PRINT.rawValue,tddParser.Tokens.ID.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	      return testSet
		 	 }()) {
		 		setState(329)
		 		try statement()


		 		setState(334)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(335)
		 	try match(tddParser.Tokens.CLOSE_BLOCK.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Hiper_expresionContext: ParserRuleContext {
			open
			func expresion() -> [ExpresionContext] {
				return getRuleContexts(ExpresionContext.self)
			}
			open
			func expresion(_ i: Int) -> ExpresionContext? {
				return getRuleContext(ExpresionContext.self, i)
			}
			open
			func AND() -> TerminalNode? {
				return getToken(tddParser.Tokens.AND.rawValue, 0)
			}
			open
			func OR() -> TerminalNode? {
				return getToken(tddParser.Tokens.OR.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return tddParser.RULE_hiper_expresion
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.enterHiper_expresion(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.exitHiper_expresion(self)
			}
		}
	}
	@discardableResult
	 open func hiper_expresion() throws -> Hiper_expresionContext {
		var _localctx: Hiper_expresionContext = Hiper_expresionContext(_ctx, getState())
		try enterRule(_localctx, 56, tddParser.RULE_hiper_expresion)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(346)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,26, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(337)
		 		try expresion()

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(338)
		 		try expresion()
		 		setState(339)
		 		try match(tddParser.Tokens.AND.rawValue)
		 		setState(340)
		 		try expresion()

		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(342)
		 		try expresion()
		 		setState(343)
		 		try match(tddParser.Tokens.OR.rawValue)
		 		setState(344)
		 		try expresion()

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ExpresionContext: ParserRuleContext {
			open
			func exp() -> ExpContext? {
				return getRuleContext(ExpContext.self, 0)
			}
			open
			func expresion() -> ExpresionContext? {
				return getRuleContext(ExpresionContext.self, 0)
			}
			open
			func EQUALITY() -> TerminalNode? {
				return getToken(tddParser.Tokens.EQUALITY.rawValue, 0)
			}
			open
			func DIFFERENT() -> TerminalNode? {
				return getToken(tddParser.Tokens.DIFFERENT.rawValue, 0)
			}
			open
			func LESS_THAN() -> TerminalNode? {
				return getToken(tddParser.Tokens.LESS_THAN.rawValue, 0)
			}
			open
			func GREATER_THAN() -> TerminalNode? {
				return getToken(tddParser.Tokens.GREATER_THAN.rawValue, 0)
			}
			open
			func LESS_EQUAL() -> TerminalNode? {
				return getToken(tddParser.Tokens.LESS_EQUAL.rawValue, 0)
			}
			open
			func GREATER_EQUAL() -> TerminalNode? {
				return getToken(tddParser.Tokens.GREATER_EQUAL.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return tddParser.RULE_expresion
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.enterExpresion(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.exitExpresion(self)
			}
		}
	}
	@discardableResult
	 open func expresion() throws -> ExpresionContext {
		var _localctx: ExpresionContext = ExpresionContext(_ctx, getState())
		try enterRule(_localctx, 58, tddParser.RULE_expresion)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(353)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,27, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(348)
		 		try exp()

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(349)
		 		try exp()
		 		setState(350)
		 		_la = try _input.LA(1)
		 		if (!(//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = {  () -> Bool in
		 		   let testArray: [Int] = [_la, tddParser.Tokens.LESS_THAN.rawValue,tddParser.Tokens.GREATER_THAN.rawValue,tddParser.Tokens.LESS_EQUAL.rawValue,tddParser.Tokens.GREATER_EQUAL.rawValue,tddParser.Tokens.DIFFERENT.rawValue,tddParser.Tokens.EQUALITY.rawValue]
		 		    return  Utils.testBitLeftShiftArray(testArray, 0)
		 		}()
		 		      return testSet
		 		 }())) {
		 		try _errHandler.recoverInline(self)
		 		}
		 		else {
		 			_errHandler.reportMatch(self)
		 			try consume()
		 		}
		 		setState(351)
		 		try expresion()

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ExpContext: ParserRuleContext {
			open
			func termino() -> TerminoContext? {
				return getRuleContext(TerminoContext.self, 0)
			}
			open
			func ADD() -> TerminalNode? {
				return getToken(tddParser.Tokens.ADD.rawValue, 0)
			}
			open
			func exp() -> ExpContext? {
				return getRuleContext(ExpContext.self, 0)
			}
			open
			func SUBSTRACT() -> TerminalNode? {
				return getToken(tddParser.Tokens.SUBSTRACT.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return tddParser.RULE_exp
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.enterExp(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.exitExp(self)
			}
		}
	}
	@discardableResult
	 open func exp() throws -> ExpContext {
		var _localctx: ExpContext = ExpContext(_ctx, getState())
		try enterRule(_localctx, 60, tddParser.RULE_exp)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(364)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,28, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(355)
		 		try termino()

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(356)
		 		try termino()
		 		setState(357)
		 		try match(tddParser.Tokens.ADD.rawValue)
		 		setState(358)
		 		try exp()

		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(360)
		 		try termino()
		 		setState(361)
		 		try match(tddParser.Tokens.SUBSTRACT.rawValue)
		 		setState(362)
		 		try exp()

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class TerminoContext: ParserRuleContext {
			open
			func factor() -> FactorContext? {
				return getRuleContext(FactorContext.self, 0)
			}
			open
			func MULTIPLY() -> TerminalNode? {
				return getToken(tddParser.Tokens.MULTIPLY.rawValue, 0)
			}
			open
			func termino() -> TerminoContext? {
				return getRuleContext(TerminoContext.self, 0)
			}
			open
			func DIVIDE() -> TerminalNode? {
				return getToken(tddParser.Tokens.DIVIDE.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return tddParser.RULE_termino
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.enterTermino(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.exitTermino(self)
			}
		}
	}
	@discardableResult
	 open func termino() throws -> TerminoContext {
		var _localctx: TerminoContext = TerminoContext(_ctx, getState())
		try enterRule(_localctx, 62, tddParser.RULE_termino)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(375)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,29, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(366)
		 		try factor()

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(367)
		 		try factor()
		 		setState(368)
		 		try match(tddParser.Tokens.MULTIPLY.rawValue)
		 		setState(369)
		 		try termino()

		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(371)
		 		try factor()
		 		setState(372)
		 		try match(tddParser.Tokens.DIVIDE.rawValue)
		 		setState(373)
		 		try termino()

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class FactorContext: ParserRuleContext {
			open
			func SUBSTRACT() -> TerminalNode? {
				return getToken(tddParser.Tokens.SUBSTRACT.rawValue, 0)
			}
			open
			func VALUE() -> TerminalNode? {
				return getToken(tddParser.Tokens.VALUE.rawValue, 0)
			}
			open
			func ID() -> TerminalNode? {
				return getToken(tddParser.Tokens.ID.rawValue, 0)
			}
			open
			func array_dimension() -> Array_dimensionContext? {
				return getRuleContext(Array_dimensionContext.self, 0)
			}
			open
			func matrix_dimension() -> Matrix_dimensionContext? {
				return getRuleContext(Matrix_dimensionContext.self, 0)
			}
			open
			func OPEN_PAR() -> TerminalNode? {
				return getToken(tddParser.Tokens.OPEN_PAR.rawValue, 0)
			}
			open
			func hiper_expresion() -> Hiper_expresionContext? {
				return getRuleContext(Hiper_expresionContext.self, 0)
			}
			open
			func CLOSE_PAR() -> TerminalNode? {
				return getToken(tddParser.Tokens.CLOSE_PAR.rawValue, 0)
			}
			open
			func function_hiper_expresions() -> Function_hiper_expresionsContext? {
				return getRuleContext(Function_hiper_expresionsContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return tddParser.RULE_factor
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.enterFactor(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.exitFactor(self)
			}
		}
	}
	@discardableResult
	 open func factor() throws -> FactorContext {
		var _localctx: FactorContext = FactorContext(_ctx, getState())
		try enterRule(_localctx, 64, tddParser.RULE_factor)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(395)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,31, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(377)
		 		try match(tddParser.Tokens.SUBSTRACT.rawValue)
		 		setState(378)
		 		try match(tddParser.Tokens.VALUE.rawValue)

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(379)
		 		try match(tddParser.Tokens.VALUE.rawValue)

		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(380)
		 		try match(tddParser.Tokens.ID.rawValue)

		 		break
		 	case 4:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(381)
		 		try match(tddParser.Tokens.ID.rawValue)
		 		setState(382)
		 		try array_dimension()

		 		break
		 	case 5:
		 		try enterOuterAlt(_localctx, 5)
		 		setState(383)
		 		try match(tddParser.Tokens.ID.rawValue)
		 		setState(384)
		 		try matrix_dimension()

		 		break
		 	case 6:
		 		try enterOuterAlt(_localctx, 6)
		 		setState(385)
		 		try match(tddParser.Tokens.OPEN_PAR.rawValue)
		 		setState(386)
		 		try hiper_expresion()
		 		setState(387)
		 		try match(tddParser.Tokens.CLOSE_PAR.rawValue)

		 		break
		 	case 7:
		 		try enterOuterAlt(_localctx, 7)
		 		setState(389)
		 		try match(tddParser.Tokens.ID.rawValue)
		 		setState(390)
		 		try match(tddParser.Tokens.OPEN_PAR.rawValue)
		 		setState(392)
		 		try _errHandler.sync(self)
		 		switch (try getInterpreter().adaptivePredict(_input,30,_ctx)) {
		 		case 1:
		 			setState(391)
		 			try function_hiper_expresions()

		 			break
		 		default: break
		 		}
		 		setState(394)
		 		try match(tddParser.Tokens.CLOSE_PAR.rawValue)

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Function_hiper_expresionsContext: ParserRuleContext {
			open
			func hiper_expresion() -> Hiper_expresionContext? {
				return getRuleContext(Hiper_expresionContext.self, 0)
			}
			open
			func COMMA() -> TerminalNode? {
				return getToken(tddParser.Tokens.COMMA.rawValue, 0)
			}
			open
			func function_hiper_expresions() -> Function_hiper_expresionsContext? {
				return getRuleContext(Function_hiper_expresionsContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return tddParser.RULE_function_hiper_expresions
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.enterFunction_hiper_expresions(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.exitFunction_hiper_expresions(self)
			}
		}
	}
	@discardableResult
	 open func function_hiper_expresions() throws -> Function_hiper_expresionsContext {
		var _localctx: Function_hiper_expresionsContext = Function_hiper_expresionsContext(_ctx, getState())
		try enterRule(_localctx, 66, tddParser.RULE_function_hiper_expresions)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(403)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,32, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(398)
		 		try hiper_expresion()

		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(399)
		 		try hiper_expresion()
		 		setState(400)
		 		try match(tddParser.Tokens.COMMA.rawValue)
		 		setState(401)
		 		try function_hiper_expresions()

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class PrintContext: ParserRuleContext {
			open
			func PRINT() -> TerminalNode? {
				return getToken(tddParser.Tokens.PRINT.rawValue, 0)
			}
			open
			func OPEN_PAR() -> TerminalNode? {
				return getToken(tddParser.Tokens.OPEN_PAR.rawValue, 0)
			}
			open
			func algo_imprimible() -> Algo_imprimibleContext? {
				return getRuleContext(Algo_imprimibleContext.self, 0)
			}
			open
			func CLOSE_PAR() -> TerminalNode? {
				return getToken(tddParser.Tokens.CLOSE_PAR.rawValue, 0)
			}
			open
			func SEMI_COLON() -> TerminalNode? {
				return getToken(tddParser.Tokens.SEMI_COLON.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return tddParser.RULE_print
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.enterPrint(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.exitPrint(self)
			}
		}
	}
	@discardableResult
	 open func print() throws -> PrintContext {
		var _localctx: PrintContext = PrintContext(_ctx, getState())
		try enterRule(_localctx, 68, tddParser.RULE_print)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(405)
		 	try match(tddParser.Tokens.PRINT.rawValue)
		 	setState(406)
		 	try match(tddParser.Tokens.OPEN_PAR.rawValue)
		 	setState(407)
		 	try algo_imprimible()
		 	setState(408)
		 	try match(tddParser.Tokens.CLOSE_PAR.rawValue)
		 	setState(409)
		 	try match(tddParser.Tokens.SEMI_COLON.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Algo_imprimibleContext: ParserRuleContext {
			open
			func expresion() -> ExpresionContext? {
				return getRuleContext(ExpresionContext.self, 0)
			}
			open
			func STRING_VAL() -> TerminalNode? {
				return getToken(tddParser.Tokens.STRING_VAL.rawValue, 0)
			}
			open
			func COMMA() -> TerminalNode? {
				return getToken(tddParser.Tokens.COMMA.rawValue, 0)
			}
			open
			func algo_imprimible() -> Algo_imprimibleContext? {
				return getRuleContext(Algo_imprimibleContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return tddParser.RULE_algo_imprimible
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.enterAlgo_imprimible(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.exitAlgo_imprimible(self)
			}
		}
	}
	@discardableResult
	 open func algo_imprimible() throws -> Algo_imprimibleContext {
		var _localctx: Algo_imprimibleContext = Algo_imprimibleContext(_ctx, getState())
		try enterRule(_localctx, 70, tddParser.RULE_algo_imprimible)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(420)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,33, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(411)
		 		try expresion()

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(412)
		 		try match(tddParser.Tokens.STRING_VAL.rawValue)

		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(413)
		 		try expresion()
		 		setState(414)
		 		try match(tddParser.Tokens.COMMA.rawValue)
		 		setState(415)
		 		try algo_imprimible()

		 		break
		 	case 4:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(417)
		 		try match(tddParser.Tokens.STRING_VAL.rawValue)
		 		setState(418)
		 		try match(tddParser.Tokens.COMMA.rawValue)
		 		setState(419)
		 		try algo_imprimible()

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class AsignationContext: ParserRuleContext {
			open
			func ID() -> TerminalNode? {
				return getToken(tddParser.Tokens.ID.rawValue, 0)
			}
			open
			func EQUALS() -> TerminalNode? {
				return getToken(tddParser.Tokens.EQUALS.rawValue, 0)
			}
			open
			func hiper_expresion() -> Hiper_expresionContext? {
				return getRuleContext(Hiper_expresionContext.self, 0)
			}
			open
			func SEMI_COLON() -> TerminalNode? {
				return getToken(tddParser.Tokens.SEMI_COLON.rawValue, 0)
			}
			open
			func array_dimension() -> Array_dimensionContext? {
				return getRuleContext(Array_dimensionContext.self, 0)
			}
			open
			func matrix_dimension() -> Matrix_dimensionContext? {
				return getRuleContext(Matrix_dimensionContext.self, 0)
			}
			open
			func READ() -> TerminalNode? {
				return getToken(tddParser.Tokens.READ.rawValue, 0)
			}
			open
			func OPEN_PAR() -> TerminalNode? {
				return getToken(tddParser.Tokens.OPEN_PAR.rawValue, 0)
			}
			open
			func TYPE() -> TerminalNode? {
				return getToken(tddParser.Tokens.TYPE.rawValue, 0)
			}
			open
			func CLOSE_PAR() -> TerminalNode? {
				return getToken(tddParser.Tokens.CLOSE_PAR.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return tddParser.RULE_asignation
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.enterAsignation(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.exitAsignation(self)
			}
		}
	}
	@discardableResult
	 open func asignation() throws -> AsignationContext {
		var _localctx: AsignationContext = AsignationContext(_ctx, getState())
		try enterRule(_localctx, 72, tddParser.RULE_asignation)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(446)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,34, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(422)
		 		try match(tddParser.Tokens.ID.rawValue)
		 		setState(423)
		 		try match(tddParser.Tokens.EQUALS.rawValue)
		 		setState(424)
		 		try hiper_expresion()
		 		setState(425)
		 		try match(tddParser.Tokens.SEMI_COLON.rawValue)

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(427)
		 		try match(tddParser.Tokens.ID.rawValue)
		 		setState(428)
		 		try array_dimension()
		 		setState(429)
		 		try match(tddParser.Tokens.EQUALS.rawValue)
		 		setState(430)
		 		try hiper_expresion()
		 		setState(431)
		 		try match(tddParser.Tokens.SEMI_COLON.rawValue)

		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(433)
		 		try match(tddParser.Tokens.ID.rawValue)
		 		setState(434)
		 		try matrix_dimension()
		 		setState(435)
		 		try match(tddParser.Tokens.EQUALS.rawValue)
		 		setState(436)
		 		try hiper_expresion()
		 		setState(437)
		 		try match(tddParser.Tokens.SEMI_COLON.rawValue)

		 		break
		 	case 4:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(439)
		 		try match(tddParser.Tokens.ID.rawValue)
		 		setState(440)
		 		try match(tddParser.Tokens.EQUALS.rawValue)
		 		setState(441)
		 		try match(tddParser.Tokens.READ.rawValue)
		 		setState(442)
		 		try match(tddParser.Tokens.OPEN_PAR.rawValue)
		 		setState(443)
		 		try match(tddParser.Tokens.TYPE.rawValue)
		 		setState(444)
		 		try match(tddParser.Tokens.CLOSE_PAR.rawValue)
		 		setState(445)
		 		try match(tddParser.Tokens.SEMI_COLON.rawValue)

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class While_loopContext: ParserRuleContext {
			open
			func WHILE() -> TerminalNode? {
				return getToken(tddParser.Tokens.WHILE.rawValue, 0)
			}
			open
			func super_condition_check() -> Super_condition_checkContext? {
				return getRuleContext(Super_condition_checkContext.self, 0)
			}
			open
			func OPEN_BLOCK() -> TerminalNode? {
				return getToken(tddParser.Tokens.OPEN_BLOCK.rawValue, 0)
			}
			open
			func CLOSE_BLOCK() -> TerminalNode? {
				return getToken(tddParser.Tokens.CLOSE_BLOCK.rawValue, 0)
			}
			open
			func statement() -> [StatementContext] {
				return getRuleContexts(StatementContext.self)
			}
			open
			func statement(_ i: Int) -> StatementContext? {
				return getRuleContext(StatementContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return tddParser.RULE_while_loop
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.enterWhile_loop(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.exitWhile_loop(self)
			}
		}
	}
	@discardableResult
	 open func while_loop() throws -> While_loopContext {
		var _localctx: While_loopContext = While_loopContext(_ctx, getState())
		try enterRule(_localctx, 74, tddParser.RULE_while_loop)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(448)
		 	try match(tddParser.Tokens.WHILE.rawValue)
		 	setState(449)
		 	try super_condition_check()
		 	setState(450)
		 	try match(tddParser.Tokens.OPEN_BLOCK.rawValue)
		 	setState(454)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, tddParser.Tokens.RETURN.rawValue,tddParser.Tokens.WHILE.rawValue,tddParser.Tokens.IF.rawValue,tddParser.Tokens.PRINT.rawValue,tddParser.Tokens.ID.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	      return testSet
		 	 }()) {
		 		setState(451)
		 		try statement()


		 		setState(456)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(457)
		 	try match(tddParser.Tokens.CLOSE_BLOCK.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Void_func_callContext: ParserRuleContext {
			open
			func ID() -> TerminalNode? {
				return getToken(tddParser.Tokens.ID.rawValue, 0)
			}
			open
			func OPEN_PAR() -> TerminalNode? {
				return getToken(tddParser.Tokens.OPEN_PAR.rawValue, 0)
			}
			open
			func CLOSE_PAR() -> TerminalNode? {
				return getToken(tddParser.Tokens.CLOSE_PAR.rawValue, 0)
			}
			open
			func SEMI_COLON() -> TerminalNode? {
				return getToken(tddParser.Tokens.SEMI_COLON.rawValue, 0)
			}
			open
			func function_hiper_expresions() -> Function_hiper_expresionsContext? {
				return getRuleContext(Function_hiper_expresionsContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return tddParser.RULE_void_func_call
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.enterVoid_func_call(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? tddListener {
				listener.exitVoid_func_call(self)
			}
		}
	}
	@discardableResult
	 open func void_func_call() throws -> Void_func_callContext {
		var _localctx: Void_func_callContext = Void_func_callContext(_ctx, getState())
		try enterRule(_localctx, 76, tddParser.RULE_void_func_call)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(459)
		 	try match(tddParser.Tokens.ID.rawValue)
		 	setState(460)
		 	try match(tddParser.Tokens.OPEN_PAR.rawValue)
		 	setState(462)
		 	try _errHandler.sync(self)
		 	switch (try getInterpreter().adaptivePredict(_input,36,_ctx)) {
		 	case 1:
		 		setState(461)
		 		try function_hiper_expresions()

		 		break
		 	default: break
		 	}
		 	setState(464)
		 	try match(tddParser.Tokens.CLOSE_PAR.rawValue)
		 	setState(465)
		 	try match(tddParser.Tokens.SEMI_COLON.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}


	public
	static let _serializedATN = tddParserATN().jsonString

	public
	static let _ATN = ATNDeserializer().deserializeFromJson(_serializedATN)
}