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

PARAM_HEADER: '@param';
RETURN_HEADER: '@return';
TEST: '@test';
FAT_ARROW: '=>';
INT: 'int';
FLOAT: 'float';
CHAR: 'char';
STR: 'string';
BOOL: 'bool';
FALSE: 'false';
TRUE: 'true';
VOID: 'void';
MAIN: 'main';
RETURN: 'return';

ALV: 'alv';

COMMA: ',';
DOT: '.';
WHITE_SPACE: ' ';
TAB: '\t';
NEW_LINE: '\n';

TYPE: (INT | FLOAT | CHAR | STR | BOOL);
NUMBER: DIGIT+;
ID: (LOWER_CASE) (LOWER_CASE | UPPPER_CASE | '_')* NUMBER?;
CONST: (UPPPER_CASE) (UPPPER_CASE | '_')* NUMBER?;
WORD: (LOWER_CASE | UPPPER_CASE)+;
SENTENCE: (WORD WHITE_SPACE)* WORD;

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

function: (header function_dec OPEN_BLOCK function_body CLOSE_BLOCK) | (header void_function_dec OPEN_BLOCK void_function_body CLOSE_BLOCK);

header: OPEN_HEADER header_body CLOSE_HEADER;

header_body: (SENTENCE params return_test tests) | (SENTENCE params) | (SENTENCE);

params: (param params) | (param);

param: PARAM_HEADER TYPE ID SENTENCE;

return_test: RETURN_HEADER TYPE SENTENCE;

tests: (test tests) | (test);

test: OPEN_PAR test_inputs CLOSE_PAR FAT_ARROW VALUE;

test_inputs: (test_input test_inputs) | test_input;

test_input: (VALUE COMMA test_inputs) | VALUE;

function_dec: (TYPE ID OPEN_PAR inputs CLOSE_PAR) | (TYPE ID OPEN_PAR CLOSE_PAR);

void_function_dec: (VOID ID OPEN_PAR inputs CLOSE_PAR) | (VOID ID OPEN_PAR CLOSE_PAR);

inputs: (input COMMA inputs) | input;

input: TYPE ID;

function_body: body return_statement;

void_function_body: body;

body: ALV;

return_statement: RETURN VALUE;

main: MAIN OPEN_PAR CLOSE_PAR OPEN_BLOCK body CLOSE_BLOCK;