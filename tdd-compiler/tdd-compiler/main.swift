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

#*
%% Print an array
@param int arr %% Array that will be printed
*#
void printArray(int arr[10]) {
    int index;
    index = 0;
    while (index < 10) {
        print(arr[index]);
        index = index + 1;
    }
}

#*
%% Bubble sort
@param int arr %% Array that will be sorted
*#
void sort(int arr[10]) {
    bool swaped;
    int index, n, tmp;
    swaped = true;
    index = 0;
    while (index < 9 && swaped == true) {
        swaped = false;
        n = index + 1;
        while (n < 10) {
            if (arr[index] > arr[n]) {
                tmp = arr[index];
                arr[index] = arr[n];
                arr[n] = tmp;
            }
            n = n + 1;
        }
        index = index + 1;
    }
    printArray(arr);
}

    main() {
        int arr[10];
        arr[0] = 4;
        arr[1] = 2;
        arr[2] = 1;
        arr[3] = 6;
        arr[4] = 1;
        arr[5] = 19;
        arr[6] = 22;
        arr[7] = 34;
        arr[8] = 55;
        arr[9] = 45;
        print("Arreglo original");
        printArray(arr);
        print("Sorted");
        sort(arr);
    }

"""

let code3: String = """
#*
    %% Getting the nth Fibonacci number
    @param int n %% The number of the sequence we want
    @return int %% El numero de la secuencia
    @test (10) => 55
*#
int fib(int n) {
    if (n == 1 || n == 0) {

        return n;
    }
    return fib(n-1) + fib(n-2);

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
    return a + b;
}

    main() {
      int n;
        n = 10;
        print(fib(n));
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
    let lexer = tddLexer(ANTLRInputStream(code3))
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
