# Tdd Language

## User Manual

### Index

* [Headers](#Headers)
* [Variable declaration](#Variable-declaration)
* [Functions](#Functions)
* [Arrays](#Arrays)
* [Conditionals](#Conditionals)
* [While loop](#While-loop)
* [Interaction](#Interaction)
    * [Read](#Read)
    * [Print](#Print)
* [Authors](#Authors)

### Headers

To reinforce test driven develpment and force documentation. Every function must have a header with the name, description, description of inputs and unit tests if it applies. This header will automatically generate documentation in Markdown as well as automatized unit tests.
```
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
        print(suma(2,4));
    }
```

### Variable declaration

Several variables of the same type can be declared separated by commas. The language supports int, float, string, char and bool. You can also declare arrays and matrixes! But it has to be on separate lines.

```

    main() {
        int a, b;
        int arr[2];
        string c;
    }
```

### Functions

Functions can be void or have type return value. They are declared as type name (type params). And inside you can write statements (conditionals, asignations, while loops and more)! The first function that executes is main. You can pass arrays as paramaters as well.

```
    void noReturn(int a[2][2]){
        print("Welcome");
    }
    int suma(int a, int b) {
        return a + b;
    }
    main() {
        int arr[2][2];
        print(suma(2,4));
        noReturn(arr);
    }
```

### Arrays

Arrays must be declared with its size for its later use. And they must be accesed the following way:
```
    int arr[5];
    arr[2] = 100;
    print(arr[2]);
    print(arr[2]*2);
```


### Conditionals

You can write if, else if and else. And include statements in their body.

```
    bool tddIsAwesome;
    tddIsAwesome = true;
    if tddIsAwesome {
        print("Tdd is awesome!");
    }
    else {
        print("It is also cool");
    }
```

### While loop

A while loop continues until the meet condition is False. You can write it the following way.

```
    int i;
    i = 0;

    while (i < 10) {
        print("Awesome");
        i = i + 1;
    }
```

### Interaction


### Read

You can read values from the user, to write it you need to pass the type to read.

```
    x = read(type);
```

### Print

You can print values to output.

```
    print(value);
```
## Authors

Federico Miguel Huguet Mack
José Antonio Toussaint García