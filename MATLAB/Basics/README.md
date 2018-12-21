# MATLAB Theory

## Variables and Data types

### Variables

In ```MATLAB``` environment, every variable is an array or matrix.

The ```who``` command displays all the variable names you have used.

The ```whos``` command displays little more about the variables −

1. Variables currently in memory
1. Type of each variables
1. Memory allocated to each variable
1. Whether they are complex variables or not

The ```clear``` command deletes all (or the specified) variable(s) from the memory.

### Data types

```MATLAB``` provides 15 fundamental data types. Every data type stores data that is in the form of a matrix or array. The size of this matrix or array is a minimum of 0-by-0 and this can grow up to a matrix or array of any size.

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

```MATLAB``` allows the following types of elementary operations −

1. Arithmetic Operators
1. Relational Operators
1. Logical Operators
1. Bitwise Operations
1. Set Operations

```MATLAB``` allows two different types of arithmetic operations −

1. Matrix arithmetic operations
1. Array arithmetic operations

Matrix arithmetic operations are same as defined in linear algebra. Array operations are executed element by element,both on one-dimensional and multidimensional array.

The matrix operators and array operators are differentiated by the period (```.```) symbol.

## Array Functions

```MATLAB``` provides the functions to sort, rotate, permute, reshape, shift the array contents and many more functions.

Concatenate function : ```cat(dim, A1, A2, ...)``` 
It can also be used to create multi-dimensional arrays.

## String Operations

We can combine strings vertically in either of the following ways −

1. Using the ```MATLAB``` concatenation operator ```[]``` and separating each row with a semicolon (;). **Please note that in this method each row must contain the same number of characters**. For strings with different lengths, you should pad with space characters as needed.

1. Using the ```char``` function. If the strings are of different lengths, char pads the shorter strings with trailing blanks so that each row has the same number of characters.

### MATLAB Functions

## Simple Function

A function is a group of statements that together perform a task. In MATLAB, functions are defined in separate files. The name of the file and of the function should be the same.

Functions operate on variables within their own workspace, which is also called the local workspace, separate from the workspace you access at the MATLAB command prompt which is called the base workspace.

Functions can accept more than one input arguments and may return more than one output arguments.

```function [out1,out2, ..., outN] = myfun(in1,in2,in3, ..., inN)```

## Anonymous Functions

An anonymous function is like an inline function in traditional programming languages, defined within a single ```MATLAB``` statement. It consists of a single ```MATLAB``` expression and any number of input and output arguments.

```f = @(arglist)expression```

## Primary and Sub-Functions

Each function file contains a required primary function that appears first and any number of optional sub-functions that comes after the primary function and used by it.

Primary functions can be called from outside of the file that defines them, either from command line or from other functions, but sub-functions cannot be called from command line or other functions, outside the function file.

Sub-functions are visible only to the primary function and other sub-functions within the function file that defines them.

## Nested Functions

Nested functions are defined within the scope of another function and they share access to the containing function's workspace.

``` Matlab
function x = A(p1, p2)
...
B(p2)
   function y = B(p3)
   ...
   end
...
end
```

## Private Functions

If we do not want to expose the implementation of a function(s), we can create them as private functions.
Private functions reside in subfolders with the special name private.
They are visible only to functions in the parent folder.

**NOTE:** For this we have to create a special folder in the current working by the name of private.

## Global Variables

Global variables can be shared by more than one function. For this, we need to declare the variable as global in all the functions.