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
		case EOF = -1, OPEN_BLOCK = 1, CLOSE_BLOCK = 2, OPEN_PAR = 3, CLOSE_PAR = 4, 
                 OPEN_COMMENT = 5, CLOSE_COMMENT = 6, OPEN_HEADER = 7, CLOSE_HEADER = 8, 
                 SEMI_COLON = 9, COLON = 10, ADD = 11, SUBSTRACT = 12, MULTIPLY = 13, 
                 DIVIDE = 14, LESS_THAN = 15, GREATER_THAN = 16, LESS_EQUAL = 17, 
                 GREATER_EQUAL = 18, AND = 19, OR = 20, DIFFERENT = 21, 
                 NOT = 22, EQUALITY = 23, EQUALS = 24, PARAM_HEADER = 25, 
                 RETURN_HEADER = 26, TEST_HEADER = 27, FAT_ARROW = 28, VOID = 29, 
                 MAIN = 30, RETURN = 31, WHILE = 32, IF = 33, ELSE = 34, 
                 ELSEIF = 35, PRINT = 36, COMMA = 37, TYPE = 38, VALUE = 39, 
                 ID = 40, CONST = 41, DESCRIPTION = 42, NUMBER = 43, STRING_VAL = 44, 
                 CHAR_VAL = 45, INT_VAL = 46, FLOAT_VAL = 47, WHITESPACE = 48, 
                 NEWLINE = 49
	}

	public
	static let RULE_program = 0, RULE_function = 1, RULE_header = 2, RULE_header_body = 3, 
            RULE_param = 4, RULE_return_test = 5, RULE_test = 6, RULE_test_inputs = 7, 
            RULE_function_dec = 8, RULE_void_function_dec = 9, RULE_inputs = 10, 
            RULE_body = 11, RULE_return_statement = 12, RULE_main = 13, 
            RULE_variable = 14, RULE_var_declaration = 15, RULE_statement = 16, 
            RULE_super_condition_check = 17, RULE_condition_check = 18, 
            RULE_condition = 19, RULE_else_if_condition = 20, RULE_else_condition = 21, 
            RULE_hiper_expresion = 22, RULE_expresion = 23, RULE_exp = 24, 
            RULE_termino = 25, RULE_factor = 26, RULE_function_hiper_expresions = 27, 
            RULE_print = 28, RULE_algo_imprimible = 29, RULE_asignation = 30, 
            RULE_while_loop = 31, RULE_void_func_call = 32

	public
	static let ruleNames: [String] = [
		"program", "function", "header", "header_body", "param", "return_test", 
		"test", "test_inputs", "function_dec", "void_function_dec", "inputs", 
		"body", "return_statement", "main", "variable", "var_declaration", "statement", 
		"super_condition_check", "condition_check", "condition", "else_if_condition", 
		"else_condition", "hiper_expresion", "expresion", "exp", "termino", "factor", 
		"function_hiper_expresions", "print", "algo_imprimible", "asignation", 
		"while_loop", "void_func_call"
	]

	private static let _LITERAL_NAMES: [String?] = [
		nil, "'{'", "'}'", "'('", "')'", "'/*'", "'*/'", "'#*'", "'*#'", "';'", 
		"':'", "'+'", "'-'", "'*'", "'/'", "'<'", "'>'", "'<='", "'>='", "'&&'", 
		"'||'", "'!='", "'!'", "'=='", "'='", "'@param'", "'@return'", "'@test'", 
		"'=>'", "'void'", "'main'", "'return'", "'while'", "'if'", "'else'", "'elseif'", 
		"'print'", "','"
	]
	private static let _SYMBOLIC_NAMES: [String?] = [
		nil, "OPEN_BLOCK", "CLOSE_BLOCK", "OPEN_PAR", "CLOSE_PAR", "OPEN_COMMENT", 
		"CLOSE_COMMENT", "OPEN_HEADER", "CLOSE_HEADER", "SEMI_COLON", "COLON", 
		"ADD", "SUBSTRACT", "MULTIPLY", "DIVIDE", "LESS_THAN", "GREATER_THAN", 
		"LESS_EQUAL", "GREATER_EQUAL", "AND", "OR", "DIFFERENT", "NOT", "EQUALITY", 
		"EQUALS", "PARAM_HEADER", "RETURN_HEADER", "TEST_HEADER", "FAT_ARROW", 
		"VOID", "MAIN", "RETURN", "WHILE", "IF", "ELSE", "ELSEIF", "PRINT", "COMMA", 
		"TYPE", "VALUE", "ID", "CONST", "DESCRIPTION", "NUMBER", "STRING_VAL", 
		"CHAR_VAL", "INT_VAL", "FLOAT_VAL", "WHITESPACE", "NEWLINE"
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
		 	setState(69)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == tddParser.Tokens.TYPE.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(66)
		 		try variable()


		 		setState(71)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(75)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == tddParser.Tokens.OPEN_HEADER.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(72)
		 		try function()


		 		setState(77)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(78)
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
		 	setState(92)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,2, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(80)
		 		try header()
		 		setState(81)
		 		try function_dec()
		 		setState(82)
		 		try match(tddParser.Tokens.OPEN_BLOCK.rawValue)
		 		setState(83)
		 		try body()
		 		setState(84)
		 		try match(tddParser.Tokens.CLOSE_BLOCK.rawValue)

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(86)
		 		try header()
		 		setState(87)
		 		try void_function_dec()
		 		setState(88)
		 		try match(tddParser.Tokens.OPEN_BLOCK.rawValue)
		 		setState(89)
		 		try body()
		 		setState(90)
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
		 	setState(94)
		 	try match(tddParser.Tokens.OPEN_HEADER.rawValue)
		 	setState(95)
		 	try header_body()
		 	setState(96)
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
		 	setState(117)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,6, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(98)
		 		try match(tddParser.Tokens.DESCRIPTION.rawValue)
		 		setState(100) 
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		repeat {
		 			setState(99)
		 			try param()


		 			setState(102); 
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 		} while (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == tddParser.Tokens.PARAM_HEADER.rawValue
		 		      return testSet
		 		 }())
		 		setState(104)
		 		try return_test()
		 		setState(106) 
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		repeat {
		 			setState(105)
		 			try test()


		 			setState(108); 
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
		 		setState(110)
		 		try match(tddParser.Tokens.DESCRIPTION.rawValue)
		 		setState(114)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		while (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == tddParser.Tokens.PARAM_HEADER.rawValue
		 		      return testSet
		 		 }()) {
		 			setState(111)
		 			try param()


		 			setState(116)
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
		 	setState(119)
		 	try match(tddParser.Tokens.PARAM_HEADER.rawValue)
		 	setState(120)
		 	try match(tddParser.Tokens.TYPE.rawValue)
		 	setState(121)
		 	try match(tddParser.Tokens.ID.rawValue)
		 	setState(122)
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
		 	setState(124)
		 	try match(tddParser.Tokens.RETURN_HEADER.rawValue)
		 	setState(125)
		 	try match(tddParser.Tokens.TYPE.rawValue)
		 	setState(126)
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
		 	setState(128)
		 	try match(tddParser.Tokens.TEST_HEADER.rawValue)
		 	setState(129)
		 	try match(tddParser.Tokens.OPEN_PAR.rawValue)
		 	setState(131)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == tddParser.Tokens.VALUE.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(130)
		 		try test_inputs()

		 	}

		 	setState(133)
		 	try match(tddParser.Tokens.CLOSE_PAR.rawValue)
		 	setState(134)
		 	try match(tddParser.Tokens.FAT_ARROW.rawValue)
		 	setState(135)
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
		 	setState(141)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,8, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(137)
		 		try match(tddParser.Tokens.VALUE.rawValue)

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(138)
		 		try match(tddParser.Tokens.VALUE.rawValue)
		 		setState(139)
		 		try match(tddParser.Tokens.COMMA.rawValue)
		 		setState(140)
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
		 	setState(143)
		 	try match(tddParser.Tokens.TYPE.rawValue)
		 	setState(144)
		 	try match(tddParser.Tokens.ID.rawValue)
		 	setState(145)
		 	try match(tddParser.Tokens.OPEN_PAR.rawValue)
		 	setState(147)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == tddParser.Tokens.TYPE.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(146)
		 		try inputs()

		 	}

		 	setState(149)
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
		 	setState(151)
		 	try match(tddParser.Tokens.VOID.rawValue)
		 	setState(152)
		 	try match(tddParser.Tokens.ID.rawValue)
		 	setState(153)
		 	try match(tddParser.Tokens.OPEN_PAR.rawValue)
		 	setState(155)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == tddParser.Tokens.TYPE.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(154)
		 		try inputs()

		 	}

		 	setState(157)
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
		 	setState(165)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,11, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(159)
		 		try match(tddParser.Tokens.TYPE.rawValue)
		 		setState(160)
		 		try match(tddParser.Tokens.ID.rawValue)

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(161)
		 		try match(tddParser.Tokens.TYPE.rawValue)
		 		setState(162)
		 		try match(tddParser.Tokens.ID.rawValue)
		 		setState(163)
		 		try match(tddParser.Tokens.COMMA.rawValue)
		 		setState(164)
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
		 	setState(170)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == tddParser.Tokens.TYPE.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(167)
		 		try variable()


		 		setState(172)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(176)
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
		 		setState(173)
		 		try statement()


		 		setState(178)
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
		 	setState(179)
		 	try match(tddParser.Tokens.RETURN.rawValue)
		 	setState(180)
		 	try hiper_expresion()
		 	setState(181)
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
		 	setState(183)
		 	try match(tddParser.Tokens.MAIN.rawValue)
		 	setState(184)
		 	try match(tddParser.Tokens.OPEN_PAR.rawValue)
		 	setState(185)
		 	try match(tddParser.Tokens.CLOSE_PAR.rawValue)
		 	setState(186)
		 	try match(tddParser.Tokens.OPEN_BLOCK.rawValue)
		 	setState(187)
		 	try body()
		 	setState(188)
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
		 	setState(190)
		 	try match(tddParser.Tokens.TYPE.rawValue)
		 	setState(192); 
		 	try _errHandler.sync(self)
		 	_alt = 1;
		 	repeat {
		 		switch (_alt) {
		 		case 1:
		 			setState(191)
		 			try var_declaration()


		 			break
		 		default:
		 			throw ANTLRException.recognition(e: NoViableAltException(self))
		 		}
		 		setState(194); 
		 		try _errHandler.sync(self)
		 		_alt = try getInterpreter().adaptivePredict(_input,14,_ctx)
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
		 	setState(201)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,15, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(196)
		 		try match(tddParser.Tokens.ID.rawValue)
		 		setState(197)
		 		try match(tddParser.Tokens.SEMI_COLON.rawValue)

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(198)
		 		try match(tddParser.Tokens.ID.rawValue)
		 		setState(199)
		 		try match(tddParser.Tokens.COMMA.rawValue)
		 		setState(200)
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
		try enterRule(_localctx, 32, tddParser.RULE_statement)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(209)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,16, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(203)
		 		try asignation()

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(204)
		 		try condition()

		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(205)
		 		try print()

		 		break
		 	case 4:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(206)
		 		try while_loop()

		 		break
		 	case 5:
		 		try enterOuterAlt(_localctx, 5)
		 		setState(207)
		 		try void_func_call()

		 		break
		 	case 6:
		 		try enterOuterAlt(_localctx, 6)
		 		setState(208)
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
		try enterRule(_localctx, 34, tddParser.RULE_super_condition_check)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(211)
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
		try enterRule(_localctx, 36, tddParser.RULE_condition_check)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(213)
		 	try match(tddParser.Tokens.OPEN_PAR.rawValue)
		 	setState(214)
		 	try hiper_expresion()
		 	setState(215)
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
		try enterRule(_localctx, 38, tddParser.RULE_condition)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(217)
		 	try match(tddParser.Tokens.IF.rawValue)
		 	setState(218)
		 	try super_condition_check()
		 	setState(219)
		 	try match(tddParser.Tokens.OPEN_BLOCK.rawValue)
		 	setState(223)
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
		 		setState(220)
		 		try statement()


		 		setState(225)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(226)
		 	try match(tddParser.Tokens.CLOSE_BLOCK.rawValue)
		 	setState(230)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == tddParser.Tokens.ELSEIF.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(227)
		 		try else_if_condition()


		 		setState(232)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(234)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == tddParser.Tokens.ELSE.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(233)
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
		try enterRule(_localctx, 40, tddParser.RULE_else_if_condition)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(236)
		 	try match(tddParser.Tokens.ELSEIF.rawValue)
		 	setState(237)
		 	try super_condition_check()
		 	setState(238)
		 	try match(tddParser.Tokens.OPEN_BLOCK.rawValue)
		 	setState(242)
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
		 		setState(239)
		 		try statement()


		 		setState(244)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(245)
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
		try enterRule(_localctx, 42, tddParser.RULE_else_condition)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(247)
		 	try match(tddParser.Tokens.ELSE.rawValue)
		 	setState(248)
		 	try match(tddParser.Tokens.OPEN_BLOCK.rawValue)
		 	setState(252)
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
		 		setState(249)
		 		try statement()


		 		setState(254)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(255)
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
		try enterRule(_localctx, 44, tddParser.RULE_hiper_expresion)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(266)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,22, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(257)
		 		try expresion()

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(258)
		 		try expresion()
		 		setState(259)
		 		try match(tddParser.Tokens.AND.rawValue)
		 		setState(260)
		 		try expresion()

		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(262)
		 		try expresion()
		 		setState(263)
		 		try match(tddParser.Tokens.OR.rawValue)
		 		setState(264)
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
		try enterRule(_localctx, 46, tddParser.RULE_expresion)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(273)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,23, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(268)
		 		try exp()

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(269)
		 		try exp()
		 		setState(270)
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
		 		setState(271)
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
		try enterRule(_localctx, 48, tddParser.RULE_exp)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(284)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,24, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(275)
		 		try termino()

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(276)
		 		try termino()
		 		setState(277)
		 		try match(tddParser.Tokens.ADD.rawValue)
		 		setState(278)
		 		try exp()

		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(280)
		 		try termino()
		 		setState(281)
		 		try match(tddParser.Tokens.SUBSTRACT.rawValue)
		 		setState(282)
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
		try enterRule(_localctx, 50, tddParser.RULE_termino)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(295)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,25, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(286)
		 		try factor()

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(287)
		 		try factor()
		 		setState(288)
		 		try match(tddParser.Tokens.MULTIPLY.rawValue)
		 		setState(289)
		 		try termino()

		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(291)
		 		try factor()
		 		setState(292)
		 		try match(tddParser.Tokens.DIVIDE.rawValue)
		 		setState(293)
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
		try enterRule(_localctx, 52, tddParser.RULE_factor)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(311)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,27, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(297)
		 		try match(tddParser.Tokens.SUBSTRACT.rawValue)
		 		setState(298)
		 		try match(tddParser.Tokens.VALUE.rawValue)

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(299)
		 		try match(tddParser.Tokens.VALUE.rawValue)

		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(300)
		 		try match(tddParser.Tokens.ID.rawValue)

		 		break
		 	case 4:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(301)
		 		try match(tddParser.Tokens.OPEN_PAR.rawValue)
		 		setState(302)
		 		try hiper_expresion()
		 		setState(303)
		 		try match(tddParser.Tokens.CLOSE_PAR.rawValue)

		 		break
		 	case 5:
		 		try enterOuterAlt(_localctx, 5)
		 		setState(305)
		 		try match(tddParser.Tokens.ID.rawValue)
		 		setState(306)
		 		try match(tddParser.Tokens.OPEN_PAR.rawValue)
		 		setState(308)
		 		try _errHandler.sync(self)
		 		switch (try getInterpreter().adaptivePredict(_input,26,_ctx)) {
		 		case 1:
		 			setState(307)
		 			try function_hiper_expresions()

		 			break
		 		default: break
		 		}
		 		setState(310)
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
		try enterRule(_localctx, 54, tddParser.RULE_function_hiper_expresions)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(319)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,28, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(314)
		 		try hiper_expresion()

		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(315)
		 		try hiper_expresion()
		 		setState(316)
		 		try match(tddParser.Tokens.COMMA.rawValue)
		 		setState(317)
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
		try enterRule(_localctx, 56, tddParser.RULE_print)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(321)
		 	try match(tddParser.Tokens.PRINT.rawValue)
		 	setState(322)
		 	try match(tddParser.Tokens.OPEN_PAR.rawValue)
		 	setState(323)
		 	try algo_imprimible()
		 	setState(324)
		 	try match(tddParser.Tokens.CLOSE_PAR.rawValue)
		 	setState(325)
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
		try enterRule(_localctx, 58, tddParser.RULE_algo_imprimible)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(336)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,29, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(327)
		 		try expresion()

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(328)
		 		try match(tddParser.Tokens.STRING_VAL.rawValue)

		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(329)
		 		try expresion()
		 		setState(330)
		 		try match(tddParser.Tokens.COMMA.rawValue)
		 		setState(331)
		 		try algo_imprimible()

		 		break
		 	case 4:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(333)
		 		try match(tddParser.Tokens.STRING_VAL.rawValue)
		 		setState(334)
		 		try match(tddParser.Tokens.COMMA.rawValue)
		 		setState(335)
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
		try enterRule(_localctx, 60, tddParser.RULE_asignation)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(338)
		 	try match(tddParser.Tokens.ID.rawValue)
		 	setState(339)
		 	try match(tddParser.Tokens.EQUALS.rawValue)
		 	setState(340)
		 	try hiper_expresion()
		 	setState(341)
		 	try match(tddParser.Tokens.SEMI_COLON.rawValue)

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
		try enterRule(_localctx, 62, tddParser.RULE_while_loop)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(343)
		 	try match(tddParser.Tokens.WHILE.rawValue)
		 	setState(344)
		 	try super_condition_check()
		 	setState(345)
		 	try match(tddParser.Tokens.OPEN_BLOCK.rawValue)
		 	setState(349)
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
		 		setState(346)
		 		try statement()


		 		setState(351)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(352)
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
		try enterRule(_localctx, 64, tddParser.RULE_void_func_call)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(354)
		 	try match(tddParser.Tokens.ID.rawValue)
		 	setState(355)
		 	try match(tddParser.Tokens.OPEN_PAR.rawValue)
		 	setState(357)
		 	try _errHandler.sync(self)
		 	switch (try getInterpreter().adaptivePredict(_input,31,_ctx)) {
		 	case 1:
		 		setState(356)
		 		try function_hiper_expresions()

		 		break
		 	default: break
		 	}
		 	setState(359)
		 	try match(tddParser.Tokens.CLOSE_PAR.rawValue)
		 	setState(360)
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