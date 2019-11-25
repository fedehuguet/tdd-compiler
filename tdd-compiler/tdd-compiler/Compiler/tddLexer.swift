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
            GREATER_THAN=16, LESS_EQUAL=17, GREATER_EQUAL=18, AND=19, OR=20, 
            DIFFERENT=21, NOT=22, EQUALITY=23, EQUALS=24, PARAM_HEADER=25, 
            RETURN_HEADER=26, TEST_HEADER=27, FAT_ARROW=28, VOID=29, MAIN=30, 
            RETURN=31, WHILE=32, IF=33, ELSE=34, ELSEIF=35, PRINT=36, COMMA=37, 
            TYPE=38, VALUE=39, ID=40, CONST=41, DESCRIPTION=42, NUMBER=43, 
            STRING_VAL=44, CHAR_VAL=45, INT_VAL=46, FLOAT_VAL=47, WHITESPACE=48, 
            NEWLINE=49

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
		"LESS_EQUAL", "GREATER_EQUAL", "AND", "OR", "DIFFERENT", "NOT", "EQUALITY", 
		"EQUALS", "PARAM_HEADER", "RETURN_HEADER", "TEST_HEADER", "FAT_ARROW", 
		"VOID", "MAIN", "RETURN", "WHILE", "IF", "ELSE", "ELSEIF", "PRINT", "COMMA", 
		"TYPE", "VALUE", "ID", "CONST", "DESCRIPTION", "NUMBER", "DESC", "STRING_VAL", 
		"CHAR_VAL", "INT_VAL", "FLOAT_VAL", "INT", "FLOAT", "CHAR", "STR", "BOOL", 
		"FALSE", "TRUE", "LOWER_CASE", "UPPPER_CASE", "DIGIT", "WHITESPACE", "NEWLINE"
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