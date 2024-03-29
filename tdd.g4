grammar tdd;
/*
    Parser rules
*/

program: 
    variable* function* main;

function: 
    header function_dec OPEN_BLOCK function_body CLOSE_BLOCK
    | header void_function_dec OPEN_BLOCK void_function_body CLOSE_BLOCK;

header: 
    OPEN_HEADER header_body CLOSE_HEADER;

header_body: 
    DESCRIPTION param+ return_test test+ 
    | DESCRIPTION param*;

param: 
    PARAM_HEADER TYPE ID DESCRIPTION;

return_test: 
    RETURN_HEADER TYPE DESCRIPTION;

test: 
    TEST_HEADER OPEN_PAR test_inputs? CLOSE_PAR FAT_ARROW VALUE;

test_inputs: 
    VALUE 
    | VALUE COMMA test_inputs;

function_dec: 
    TYPE ID OPEN_PAR inputs? CLOSE_PAR;

void_function_dec: 
    VOID ID OPEN_PAR inputs? CLOSE_PAR;

inputs: 
    TYPE ID 
    | TYPE ID COMMA inputs;

function_body: 
    body return_statement;

void_function_body: 
    body;

body: 
    variable* statement+;

return_statement: 
    RETURN VALUE SEMI_COLON;

main: 
    MAIN OPEN_PAR CLOSE_PAR OPEN_BLOCK body CLOSE_BLOCK;

variable: 
    TYPE var_declaration+;

var_declaration: 
    ID SEMI_COLON
    | ID COMMA var_declaration;

statement:  
    asignation 
    | condition 
    | print 
    | while_loop;

condition_check: 
    OPEN_PAR hiper_expresion CLOSE_PAR;

condition: 
    IF condition_check OPEN_BLOCK body CLOSE_BLOCK 
    | IF condition_check OPEN_BLOCK body CLOSE_BLOCK ELSE OPEN_BLOCK body CLOSE_BLOCK 
    | IF condition_check OPEN_BLOCK body CLOSE_BLOCK (ELSEIF condition_check OPEN_BLOCK body CLOSE_BLOCK)+ (ELSE OPEN_BLOCK body CLOSE_BLOCK)?;

hiper_expresion: 
    expresion 
    | expresion AND hiper_expresion
    | expresion OR hiper_expresion;

expresion:
    exp
    | exp LESS_THAN exp
    | exp GREATER_THAN exp
    | exp DIFFERENT exp;

exp:
    termino
    | termino ADD exp
    | termino SUBSTRACT exp;

termino:
    factor
    | factor MULTIPLY termino
    | factor DIVIDE termino;

factor:
    condition_check
    | ADD VALUE
    | SUBSTRACT VALUE
    | VALUE | ID;

print: 
    PRINT OPEN_PAR algo_imprimible CLOSE_PAR SEMI_COLON;

algo_imprimible: 
    expresion 
    | STRING_VAL 
    | expresion COMMA algo_imprimible 
    | STRING_VAL COMMA algo_imprimible;

asignation: 
    ID EQUALS expresion SEMI_COLON;

while_loop: 
    WHILE condition_check OPEN_BLOCK body CLOSE_BLOCK;

/*
    Lexer rules
*/

//Reserved characters
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
DIVIDE: '/';
LESS_THAN: '<';
GREATER_THAN: '>';
AND: '&&';
OR: '||';
DIFFERENT: '!=';
NOT: '!';
EQUALITY: '==';
EQUALS: '=';

//Header documentation
PARAM_HEADER: '@param';
RETURN_HEADER: '@return';
TEST_HEADER: '@test';
FAT_ARROW: '=>';

VOID: 'void';
MAIN: 'main';
RETURN: 'return';
WHILE: 'while';
IF: 'if';
ELSE: 'else';
ELSEIF: 'elseif';
PRINT: 'print';

ALV: 'alv';

COMMA: ',';

TYPE: (INT | FLOAT | BOOL | STR | CHAR);
ID: LOWER_CASE (LOWER_CASE | UPPPER_CASE | '_')* NUMBER?;
CONST: UPPPER_CASE (UPPPER_CASE | '_')* NUMBER?;
DESCRIPTION: DESC (LOWER_CASE | UPPPER_CASE | WHITESPACE)+;

VALUE: (STRING_VAL | CHAR_VAL | INT_VAL | FLOAT_VAL | BOOL_VAL);

NUMBER: DIGIT+;

fragment DESC: '%%';

STRING_VAL: '"'(.*?)'"';
CHAR_VAL: '\'' (.?) '\'';
INT_VAL: NUMBER;
FLOAT_VAL: NUMBER '.' NUMBER;
BOOL_VAL: (FALSE | TRUE);

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
