grammar tdd;
/*
    Lexer rules
*/

OPEN_BLOCK: '{';
CLOSE_BLOCK: '}';
OPEN_PAR: '(';
CLOSE_PAR: ')';
OPEN_COMMENT: '/*';
CLOSE_COMMENT: '*/';
OPEN_HEADER: '#*';
CLOSE_HEADER: '*#';
SEMI_COLON: ';';
COLON: ':';
ADD: '+';
SUBSTRACT: '-';
MULTIPLY: '*';
AND: '&&';
OR: '||';
DIFFERENT: '!=';
NOT: '!';
EQUALITY: '==';
EQUALS: '=';

PARAM_HEADER: '@param';
RETURN_HEADER: '@return';
TEST: '@test';
FAT_ARROW: '=>';
fragment INT: 'int';
fragment FLOAT: 'float';
fragment CHAR: 'char';
fragment STR: 'string';
fragment BOOL: 'bool';
fragment FALSE: 'false';
fragment TRUE: 'true';
VOID: 'void';
MAIN: 'main';
RETURN: 'return';
WHILE: 'while';
IF: 'if';

ALV: 'alv';

COMMA: ',';
fragment DOT: '.';

TYPE: (INT | FLOAT | BOOL | STR | CHAR);
ID: LOWER_CASE (LOWER_CASE | UPPPER_CASE)*;
CONST: UPPPER_CASE (UPPPER_CASE | '_')* NUMBER?;
SENTENCE: UCASEWORD ' ' WORD*;

fragment STRING_VAL: '"'SENTENCE'"';
fragment CHAR_VAL: '\'' (LOWER_CASE | UPPPER_CASE) '\'';
fragment INT_VAL: NUMBER;
fragment FLOAT_VAL: NUMBER DOT NUMBER;
fragment BOOL_VAL: (FALSE | TRUE);
VALUE: (STRING_VAL | CHAR_VAL | INT_VAL | FLOAT_VAL | BOOL_VAL);

UCASEWORD: UPPPER_CASE LOWER_CASE*;
WORD: (LOWER_CASE)+;
NUMBER: DIGIT+;

fragment LOWER_CASE: [a-z];
fragment UPPPER_CASE: [A-Z];
fragment DIGIT: [0-9];

WHITESPACE
    :   [ \t]+
        -> skip
    ;

NEWLINE
    :   (   '\r' '\n'?
        |   '\n'
        )
        -> skip
    ;

    /*
    Parser rules
*/

program: function* main;

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

body: vars ALV | ALV;

return_statement: RETURN VALUE SEMI_COLON;

main: MAIN OPEN_PAR CLOSE_PAR OPEN_BLOCK body CLOSE_BLOCK;

vars: TYPE var_declaration vars | TYPE var_declaration;

var_declaration: var_name;
    
var_name: ID SEMI_COLON | ID COMMA var_name;