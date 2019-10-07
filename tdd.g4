grammar tdd;
/*
    Lexer rules
*/

fragment LOWER_CASE: [a-z];
fragment UPPPER_CASE: [A-Z];
fragment DIGIT: [0-9];

OPEN_BLOCK: '{';
CLOSE_BLOCK: '}';
OPEN_PAR: '(';
CLOSE_PAR: ')';
OPEN_COMMENT: '/*';
CLOSE_COMMENT: '*/';
OPEN_HEADER: '#*';
CLOSE_HEADER: '*#';

PARAM: '@param';
RETURN: '@return';
TEST: '@test';
FAT_ARROW: '=>';
INT: 'int';
FLOAT: 'float';
CHAR: 'char';
STR: 'string';
BOOL: 'bool';
FALSE: 'false';
TRUE: 'true';

COMMA: ',';
DOT: '.';
WHITE_SPACE: ' ';
TAB: '\t';
NEW_LINE: '\n';

TYPE: (INT | FLOAT | CHAR | STR | BOOL);
NUMBER: DIGIT+;
ID: (LOWER_CASE) (LOWER_CASE | UPPPER_CASE | '_')* NUMBER?;
CONST: (UPPPER_CASE) (UPPPER_CASE | '_')* NUMBER?;
WORD: (LOWER_CASE | UPPPER_CASE | WHITE_SPACE);
SENTENCE: WORD+;

STRING_VAL: '"' SENTENCE '"';
CHAR_VAL: '\'' (LOWER_CASE | UPPPER_CASE) '\'';
INT_VAL: NUMBER;
FLOAT_VAL: NUMBER DOT NUMBER;
BOOL_VAL: (FALSE | TRUE);
VALUE: (STRING_VAL | CHAR_VAL | INT_VAL | FLOAT_VAL | BOOL_VAL);

/*
    Parser rules
*/

program: functions main;

functions: (function functions) | (function);

function: header function_body;

header: OPEN_HEADER header_body CLOSE_HEADER;

header_body: (SENTENCE params return tests) | (SENTENCE params);

params: (param params) | (param);

param: PARAM TYPE ID SENTENCE;

return: RETURN TYPE SENTENCE;

tests: (test tests) | (test);

test: OPEN_PAR test_inputs CLOSE_PAR FAT_ARROW VALUE;

test_inputs: (test_input test_inputs) | test_input;

test_input: (VALUE COMMA test_inputs) | VALUE;