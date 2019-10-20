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

PARAM_HEADER: '@param';
RETURN_HEADER: '@return';
TEST_HEADER: '@test';
FAT_ARROW: '=>';
VOID: 'void';
MAIN: 'main';
RETURN: 'return';

ALV: 'alv';

COMMA: ',';

TYPE: (INT | FLOAT | BOOL | STR | CHAR);
ID: LOWER_CASE (LOWER_CASE | UPPPER_CASE | '_')* NUMBER?;
CONST: UPPPER_CASE (UPPPER_CASE | '_')* NUMBER?;
DESCRIPTION: DESC (LOWER_CASE | UPPPER_CASE | WHITESPACE)+ DESC;

VALUE: (STRING_VAL | CHAR_VAL | INT_VAL | FLOAT_VAL | BOOL_VAL);

NUMBER: DIGIT+;

fragment DESC: '**';

fragment STRING_VAL: '"'(LOWER_CASE | UPPPER_CASE | ' ')*'"';
fragment CHAR_VAL: '\'' (LOWER_CASE | UPPPER_CASE) '\'';
fragment INT_VAL: NUMBER;
fragment FLOAT_VAL: NUMBER '.' NUMBER;
fragment BOOL_VAL: (FALSE | TRUE);

fragment INT: 'int';
fragment FLOAT: 'float';
fragment CHAR: 'char';
fragment STR: 'string';
fragment BOOL: 'bool';
fragment FALSE: 'false';
fragment TRUE: 'true';

fragment LOWER_CASE: [a-z];
fragment UPPPER_CASE: [A-Z];
fragment DIGIT: [0-9];

WHITESPACE
    :   ([ \t]+ | ' ')
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

header_body: (DESCRIPTION param+ return_test test+) | (DESCRIPTION param+ ) | (DESCRIPTION);

param: PARAM_HEADER TYPE ID DESCRIPTION;

return_test: RETURN_HEADER TYPE DESCRIPTION;

test: TEST_HEADER OPEN_PAR test_input CLOSE_PAR FAT_ARROW VALUE;

test_input: VALUE (COMMA VALUE)*;

function_dec: TYPE ID OPEN_PAR input* CLOSE_PAR;

void_function_dec: VOID ID OPEN_PAR input* CLOSE_PAR;

input: TYPE ID (COMMA TYPE ID)*;

function_body: body return_statement;

void_function_body: body;

body: ALV;

return_statement: RETURN (VALUE | ID);

main: MAIN OPEN_PAR CLOSE_PAR OPEN_BLOCK body CLOSE_BLOCK;