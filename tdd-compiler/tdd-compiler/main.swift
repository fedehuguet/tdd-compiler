//
//  main.swift
//  tdd-compiler
//
//  Created by Tony Toussaint on 10/25/19.
//  Copyright © 2019 Tony Toussaint. All rights reserved.
//

import Foundation
import Antlr4

let code: String = """
 

    main() {
        int b;
        string hello, world;
        int y,x;
        string arr[5];
        string mat[5][5];
        b = 4;
        y = 2;
        hello = "Hello";

        while (y >= 0){
            x = 2;
            while (x >= 0){
                mat[y][x] = hello;
                print(mat[y][x]);
                x = x - 1;
            }
            y = y - 1;
        }
    }

"""

let code2: String = """
int a;

#*
%% Ala a
@param int  a %% A value
@param int b %% B value
*#

int nam(int a, float b) {
    int w, k;
    bool e;
    if (e == true) {
        print(a);
    }
    if(a>(1+1)*8/7 && (a<2 || a > b)) {
        print("Hola");
    } elseif(a>3) {
        print("Hola dos");
    } elseif(a>4) {
        print("Hola tres");
    }
    return 3;
}

#*
%% Function to add two variables
@param int  a %% First value to add
@param int b %% Second value to add
@return int %% la suma de los dos numeros

@test (2,4) => 6
@test (120,200) => 320
*#

int suma(int a, int b) {
    print(a);
    return nam(2,4.0);
}

#*
%% A void function with no params
*#

void noReturn() {
    a = a + 1;
}

#*
%% A void function with params
*#

void noReturnParams(int w, string k) {
    print(k);
}

main(){
    int a, b, c;
    float zz;
    a = 4;
    if(2+4 > a){
        print("Hola");
    } elseif(a>b) {
        print("Hola 33");
    } else {
        print("Hola tercero!!@");
    }

    while(a > 0) {
        a = a - 1;
    }
    print(4+2);
    noReturnParams(a,"hola");
}
"""

do {
    let lexer = tddLexer(ANTLRInputStream(code))
    let tokens = CommonTokenStream(lexer)
    let parser = try tddParser(tokens)
    let tree = try parser.program()
    print(tree)
    let walker = ParseTreeWalker()
    let tddBaseListenerInstance = tddBaseListener.init()
    try walker.walk(tddBaseListenerInstance, tree)
    print(tddBaseListenerInstance)
} catch {
    print("Parse error: \(error.localizedDescription)")
}
