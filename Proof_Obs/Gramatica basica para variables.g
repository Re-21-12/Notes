grammar Expr;
root: action+ EOF;

action: NAME ':=' expr
    | 'write' NAME
    ;

expr: <assoc=right> expr '^' expr
    | expr ('*'|'/') expr
    | expr ('+'|'-') expr
    | NUM
    ;
    

NUM : [0-9]+ ;
NAME : [a-z]+ ;
WS : [ \n]+ -> skip ;

    
    
