// Generated from tdd.g4 by ANTLR 4.7.2
import Antlr4

open class tddLexer: Lexer {

	internal static var _decisionToDFA: [DFA] = {
          var decisionToDFA = [DFA]()
          let length = tddLexer._ATN.getNumberOfDecisions()
          for i in 0..<length {
          	    decisionToDFA.append(DFA(tddLexer._ATN.getDecisionState(i)!, i))
          }
           return decisionToDFA
     }()

	internal static let _sharedContextCache = PredictionContextCache()

	public
	static let OPEN_BLOCK=1, CLOSE_BLOCK=2, OPEN_PAR=3, CLOSE_PAR=4, OPEN_COMMENT=5, 
            CLOSE_COMMENT=6, OPEN_HEADER=7, CLOSE_HEADER=8, SEMI_COLON=9, 
            COLON=10, ADD=11, SUBSTRACT=12, MULTIPLY=13, DIVIDE=14, LESS_THAN=15, 
            GREATER_THAN=16, AND=17, OR=18, DIFFERENT=19, NOT=20, EQUALITY=21, 
            EQUALS=22, PARAM_HEADER=23, RETURN_HEADER=24, TEST_HEADER=25, 
            FAT_ARROW=26, VOID=27, MAIN=28, RETURN=29, WHILE=30, IF=31, 
            ELSE=32, ELSEIF=33, PRINT=34, COMMA=35, TYPE=36, ID=37, CONST=38, 
            DESCRIPTION=39, VALUE=40, NUMBER=41, STRING_VAL=42, CHAR_VAL=43, 
            INT_VAL=44, FLOAT_VAL=45, BOOL_VAL=46, WHITESPACE=47, NEWLINE=48

	public
	static let channelNames: [String] = [
		"DEFAULT_TOKEN_CHANNEL", "HIDDEN"
	]

	public
	static let modeNames: [String] = [
		"DEFAULT_MODE"
	]

	public
	static let ruleNames: [String] = [
		"OPEN_BLOCK", "CLOSE_BLOCK", "OPEN_PAR", "CLOSE_PAR", "OPEN_COMMENT", 
		"CLOSE_COMMENT", "OPEN_HEADER", "CLOSE_HEADER", "SEMI_COLON", "COLON", 
		"ADD", "SUBSTRACT", "MULTIPLY", "DIVIDE", "LESS_THAN", "GREATER_THAN", 
		"AND", "OR", "DIFFERENT", "NOT", "EQUALITY", "EQUALS", "PARAM_HEADER", 
		"RETURN_HEADER", "TEST_HEADER", "FAT_ARROW", "VOID", "MAIN", "RETURN", 
		"WHILE", "IF", "ELSE", "ELSEIF", "PRINT", "COMMA", "TYPE", "ID", "CONST", 
		"DESCRIPTION", "VALUE", "NUMBER", "DESC", "STRING_VAL", "CHAR_VAL", "INT_VAL", 
		"FLOAT_VAL", "BOOL_VAL", "INT", "FLOAT", "CHAR", "STR", "BOOL", "FALSE", 
		"TRUE", "LOWER_CASE", "UPPPER_CASE", "DIGIT", "WHITESPACE", "NEWLINE"
	]

	private static let _LITERAL_NAMES: [String?] = [
		nil, "'{'", "'}'", "'('", "')'", "'/*'", "'*/'", "'#*'", "'*#'", "';'", 
		"':'", "'+'", "'-'", "'*'", "'/'", "'<'", "'>'", "'&&'", "'||'", "'!='", 
		"'!'", "'=='", "'='", "'@param'", "'@return'", "'@test'", "'=>'", "'void'", 
		"'main'", "'return'", "'while'", "'if'", "'else'", "'elseif'", "'print'", 
		"','"
	]
	private static let _SYMBOLIC_NAMES: [String?] = [
		nil, "OPEN_BLOCK", "CLOSE_BLOCK", "OPEN_PAR", "CLOSE_PAR", "OPEN_COMMENT", 
		"CLOSE_COMMENT", "OPEN_HEADER", "CLOSE_HEADER", "SEMI_COLON", "COLON", 
		"ADD", "SUBSTRACT", "MULTIPLY", "DIVIDE", "LESS_THAN", "GREATER_THAN", 
		"AND", "OR", "DIFFERENT", "NOT", "EQUALITY", "EQUALS", "PARAM_HEADER", 
		"RETURN_HEADER", "TEST_HEADER", "FAT_ARROW", "VOID", "MAIN", "RETURN", 
		"WHILE", "IF", "ELSE", "ELSEIF", "PRINT", "COMMA", "TYPE", "ID", "CONST", 
		"DESCRIPTION", "VALUE", "NUMBER", "STRING_VAL", "CHAR_VAL", "INT_VAL", 
		"FLOAT_VAL", "BOOL_VAL", "WHITESPACE", "NEWLINE"
	]
	public
	static let VOCABULARY = Vocabulary(_LITERAL_NAMES, _SYMBOLIC_NAMES)


	override open
	func getVocabulary() -> Vocabulary {
		return tddLexer.VOCABULARY
	}

	public
	required init(_ input: CharStream) {
	    RuntimeMetaData.checkVersion("4.7.2", RuntimeMetaData.VERSION)
		super.init(input)
		_interp = LexerATNSimulator(self, tddLexer._ATN, tddLexer._decisionToDFA, tddLexer._sharedContextCache)
	}

	override open
	func getGrammarFileName() -> String { return "tdd.g4" }

	override open
	func getRuleNames() -> [String] { return tddLexer.ruleNames }

	override open
	func getSerializedATN() -> String { return tddLexer._serializedATN }

	override open
	func getChannelNames() -> [String] { return tddLexer.channelNames }

	override open
	func getModeNames() -> [String] { return tddLexer.modeNames }

	override open
	func getATN() -> ATN { return tddLexer._ATN }


	public
	static let _serializedATN: String = tddLexerATN().jsonString

	public
	static let _ATN: ATN = ATNDeserializer().deserializeFromJson(_serializedATN)
}