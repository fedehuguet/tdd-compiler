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
	static let OPEN_BLOCK=1, CLOSE_BLOCK=2, OPEN_BRACKET=3, CLOSE_BRACKET=4, 
            OPEN_PAR=5, CLOSE_PAR=6, OPEN_COMMENT=7, CLOSE_COMMENT=8, OPEN_HEADER=9, 
            CLOSE_HEADER=10, SEMI_COLON=11, COLON=12, ADD=13, SUBSTRACT=14, 
            MULTIPLY=15, DIVIDE=16, LESS_THAN=17, GREATER_THAN=18, LESS_EQUAL=19, 
            GREATER_EQUAL=20, AND=21, OR=22, DIFFERENT=23, NOT=24, EQUALITY=25, 
            EQUALS=26, PARAM_HEADER=27, RETURN_HEADER=28, TEST_HEADER=29, 
            FAT_ARROW=30, VOID=31, MAIN=32, RETURN=33, WHILE=34, IF=35, 
            ELSE=36, ELSEIF=37, PRINT=38, READ=39, COMMA=40, TYPE=41, VALUE=42, 
            ID=43, CONST=44, DESCRIPTION=45, INT_VAL=46, NUMBER=47, STRING_VAL=48, 
            CHAR_VAL=49, FLOAT_VAL=50, WHITESPACE=51, NEWLINE=52

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
		"OPEN_BLOCK", "CLOSE_BLOCK", "OPEN_BRACKET", "CLOSE_BRACKET", "OPEN_PAR", 
		"CLOSE_PAR", "OPEN_COMMENT", "CLOSE_COMMENT", "OPEN_HEADER", "CLOSE_HEADER", 
		"SEMI_COLON", "COLON", "ADD", "SUBSTRACT", "MULTIPLY", "DIVIDE", "LESS_THAN", 
		"GREATER_THAN", "LESS_EQUAL", "GREATER_EQUAL", "AND", "OR", "DIFFERENT", 
		"NOT", "EQUALITY", "EQUALS", "PARAM_HEADER", "RETURN_HEADER", "TEST_HEADER", 
		"FAT_ARROW", "VOID", "MAIN", "RETURN", "WHILE", "IF", "ELSE", "ELSEIF", 
		"PRINT", "READ", "COMMA", "TYPE", "VALUE", "ID", "CONST", "DESCRIPTION", 
		"INT_VAL", "NUMBER", "DESC", "STRING_VAL", "CHAR_VAL", "FLOAT_VAL", "INT", 
		"FLOAT", "CHAR", "STR", "BOOL", "FALSE", "TRUE", "LOWER_CASE", "UPPPER_CASE", 
		"DIGIT", "WHITESPACE", "NEWLINE"
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