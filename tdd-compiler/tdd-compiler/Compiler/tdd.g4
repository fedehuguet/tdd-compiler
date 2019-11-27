grammar tdd;
/*
    Parser rules
*/

program:
    (variable | non_atomic)* function* main;

function:
    header function_dec OPEN_BLOCK body CLOSE_BLOCK
    | header void_function_dec OPEN_BLOCK body CLOSE_BLOCK;

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
    | TYPE ID COMMA inputs
    | TYPE ID array_dimension_dec
    | TYPE ID array_dimension_dec COMMA inputs
    | TYPE ID matrix_dimension_dec
    | TYPE ID matrix_dimension_dec COMMA inputs;

body:
    (variable | non_atomic)* statement*;

return_statement:
    RETURN hiper_expresion SEMI_COLON;

main:
    MAIN OPEN_PAR CLOSE_PAR OPEN_BLOCK body CLOSE_BLOCK;

variable:
    TYPE var_declaration+;

var_declaration:
    ID SEMI_COLON
    | ID COMMA var_declaration;
    
non_atomic:
    TYPE na_declaration+;
    
na_declaration:
    ID array_dimension_dec SEMI_COLON
    | ID array_dimension_dec COMMA na_declaration
    | ID matrix_dimension_dec SEMI_COLON
    | ID matrix_dimension_dec COMMA na_declaration;

array_dimension_dec:
    OPEN_BRACKET VALUE CLOSE_BRACKET;
    
matrix_dimension_dec:
    OPEN_BRACKET VALUE CLOSE_BRACKET
    OPEN_BRACKET VALUE CLOSE_BRACKET;
    
array_dimension:
        OPEN_BRACKET hiper_expresion CLOSE_BRACKET;
        
matrix_dimension:
        OPEN_BRACKET hiper_expresion CLOSE_BRACKET
        OPEN_BRACKET hiper_expresion CLOSE_BRACKET;

statement:
    asignation
    | condition
    | print
    | while_loop
    | void_func_call
    | return_statement;
    
super_condition_check:
    condition_check;

condition_check:
    OPEN_PAR hiper_expresion CLOSE_PAR;

condition:
    IF super_condition_check OPEN_BLOCK statement* CLOSE_BLOCK else_if_condition* else_condition?;

else_if_condition:
    ELSEIF super_condition_check OPEN_BLOCK statement* CLOSE_BLOCK;
    
else_condition:
    ELSE OPEN_BLOCK statement* CLOSE_BLOCK;

hiper_expresion:
    expresion
    | expresion AND expresion
    | expresion OR expresion;

expresion:
    exp
    | exp (EQUALITY | DIFFERENT | LESS_THAN | GREATER_THAN | LESS_EQUAL | GREATER_EQUAL) expresion;

exp:
    termino
    | termino ADD exp
    | termino SUBSTRACT exp;

termino:
    factor
    | factor MULTIPLY termino
    | factor DIVIDE termino;

factor:
    SUBSTRACT VALUE
    | VALUE | ID
    | ID array_dimension
    | ID matrix_dimension
    | OPEN_PAR hiper_expresion CLOSE_PAR
    | ID OPEN_PAR function_hiper_expresions? CLOSE_PAR;
    
function_hiper_expresions:
    | hiper_expresion
    | hiper_expresion COMMA function_hiper_expresions;

print:
    PRINT OPEN_PAR algo_imprimible CLOSE_PAR SEMI_COLON;

algo_imprimible:
    expresion
    | STRING_VAL
    | expresion COMMA algo_imprimible
    | STRING_VAL COMMA algo_imprimible;

asignation:
    ID EQUALS hiper_expresion SEMI_COLON
    | ID array_dimension EQUALS hiper_expresion SEMI_COLON
    | ID matrix_dimension EQUALS hiper_expresion SEMI_COLON
    | ID EQUALS READ OPEN_PAR TYPE CLOSE_PAR SEMI_COLON;

while_loop:
    WHILE super_condition_check OPEN_BLOCK statement* CLOSE_BLOCK;
    
void_func_call:
    ID OPEN_PAR function_hiper_expresions? CLOSE_PAR SEMI_COLON;

/*
    Lexer rules
*/

//Reserved characters
OPEN_BLOCK: '{';
CLOSE_BLOCK: '}';
OPEN_BRACKET: '[';
CLOSE_BRACKET: ']';
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
LESS_EQUAL: '<=';
GREATER_EQUAL: '>=';
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
READ: 'read';

COMMA: ',';

TYPE: (INT | FLOAT | BOOL | STR | CHAR);
VALUE: (STRING_VAL | CHAR_VAL | INT_VAL | FLOAT_VAL | TRUE | FALSE);
ID: LOWER_CASE (LOWER_CASE | UPPPER_CASE | '_')* NUMBER?;
CONST: UPPPER_CASE (UPPPER_CASE | '_')* NUMBER?;
DESCRIPTION: DESC (LOWER_CASE | UPPPER_CASE | WHITESPACE)+;

INT_VAL: [0-9]+;
NUMBER: DIGIT+;

fragment DESC: '%%';

STRING_VAL: '"'(.*?)'"';
CHAR_VAL: '\'' (.?) '\'';
FLOAT_VAL: NUMBER '.' NUMBER;

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
