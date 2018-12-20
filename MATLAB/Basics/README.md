# MATLAB Theory

## Variables and Data types

### Variables

In MATLAB environment, every variable is an array or matrix.

The ```who``` command displays all the variable names you have used.

The ```whos``` command displays little more about the variables −

1. Variables currently in memory
1. Type of each variables
1. Memory allocated to each variable
1. Whether they are complex variables or not

The ```clear``` command deletes all (or the specified) variable(s) from the memory.

### Data types

MATLAB provides 15 fundamental data types. Every data type stores data that is in the form of a matrix or array. The size of this matrix or array is a minimum of 0-by-0 and this can grow up to a matrix or array of any size.

## Files, I/O

Some of the commands used for Input/Output are :

| Commands |                  Description                 |
|----------|:--------------------------------------------:|
| disp     | Displays contents of an array or string.     |
| fscanf   | Read formatted data from a file.             |
| format   | Controls screen-display format.              |
| fprintf  | Performs formatted writes to screen or file. |
| input    | Displays prompts and waits for input.        |
| ;        | Suppresses screen printing.                  |

## Operators

MATLAB allows the following types of elementary operations −

1. Arithmetic Operators
1. Relational Operators
1. Logical Operators
1. Bitwise Operations
1.  Set Operations

MATLAB allows two different types of arithmetic operations −

1. Matrix arithmetic operations
1. Array arithmetic operations

Matrix arithmetic operations are same as defined in linear algebra. Array operations are executed element by element,both on one-dimensional and multidimensional array.

The matrix operators and array operators are differentiated by the period (```.```) symbol.