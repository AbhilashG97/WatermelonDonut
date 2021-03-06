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

### Tips and tricks with Arrays

1. If we want to access all the elements in multiple rows, we use the following syntax: 

   ```matlab
   disp(A([1 3], :));
   ```

1. If we want to access all the elements of a particular row, we will use the following syntax:

   ```matlab
   disp(A(:,2);
   ```   

   :exclamation: We can also use the same trick to modify all the elements of a particular coloumn.

   ```matlab
   A(:,2) = [10,10: 10,19L 20,40];
   disp(A);
   ```
1. If we want to convert a matrix any dimension to a column vector we can do the following:
   
   ```matlab
   B = A(:);
   ```

1. We can also concatenate matrices to obtain a new matrix. The syntax for it is as follows:

   Let us assume that we have two matrices ```B``` and ```C```.

   1. Concatinating matrices horizontally

      ```matlab
      D = [B C];
      ```
   1. Concatinating matrices vertically

      ```matlab
      D = [B; C];
      ```

   :warning: ```;``` means new-line.

1. **sum()**
   The ```sum()``` function can also be used to calcaulate the sum of the matrix row-wise or column-wise. 
   
   This can be done in the following way - 

   1. ```sum(A, 1)```

      This does the column-wise sum of all the elements present in the matrix.

   1. ```sum(A, 2)```

      This does the row-wise sum of all the elements present in the matrix.

1. **flipud()**

   We can flip a matrix upside down using a command in MATLAB. The command for this is as folows - 

   ```flipud(A)```

1. **size()**

   The ```size()``` function will return the size the matrix. However if we provide another argument it can calculate the size of the rows and columns in a matrix.

   Here is an example for the same - 

   1. ```size(x, 1)```

      This returns the size of the number of rows in a matrix.

   1. ```size(x, 2)```

      This returns the size of the number of columns in a matrix. 

## Loops and Operations 

```MATLAB``` has loops which can be used as when required. There are both ```for``` and ```while``` loops.

Here are examples for the same - 

1. ```while loop```
   
   A while loop can be used in the following way - 

   ```matlab
   while condition,
      disp('stuff');
   end;
   ```

1. ```for loop```

   A ```for``` loop can used in the following way - 
   
   ```matlab
   for index = values
      statement
   end
   ```

### Miscellaneous

1. **length() vs size()**

   ```length()``` returns the size of the longest part of the matrix. If the matrix is a 2x3 matrix the length will be 3, as 3 is the largest.

   ```size()``` returns the full dimension of a given matrix.

1. **incrementing all the elements of a matrix**

   We can do the following to increment all the elements of a matrix.

   ```matlab
   A + 1;
   ```

   We can also use the ```ones()``` function to increment the required elements.

   ```matlab
   A + ones(length(A),1);
   ```

1. **Comparision operations on matrices**

   We can also find out if the elements of a matrix are greater than or less than a specified value.

   The syntax for that is as follows: 

   ```matlab 
   A < 3
   ```

   This will output 1's and 0's. Where 1's indicate those indicies which satisfies a given condition and 0's indicate those indicies that don't satisfy a condition.

   :warning: We can also use the ```find()``` along with this to find the elements satisfying the given condition. 

1. **Finding max()**

   The ```max()``` function can be used to find the maximum in an array. We can also use the ```max()``` function to find the index at which the max funtion is located. 

   ```matlab
   [value, index] = max(A);

   disp(max(A));
   ``` 

   :warning: We can also find the max of element present in all of the columns or the max element in present in all the rows.

      The syntax for this is as follows:

      **Max in columns**
      ```matlab
      Q = max(A, [], 1);
      ```

      **Max in rows**
      ```matlab
      R = max(A, [], 2);
      ```

## String Operations

We can combine strings vertically in either of the following ways −

1. Using the ```MATLAB``` concatenation operator ```[]``` and separating each row with a semicolon (;). **Please note that in this method each row must contain the same number of characters**. For strings with different lengths, you should pad with space characters as needed.

1. Using the ```char``` function. If the strings are of different lengths, char pads the shorter strings with trailing blanks so that each row has the same number of characters.

## MATLAB Functions

```help function_name``` can be used to get more information on a function.

### Simple Function

A function is a group of statements that together perform a task. In MATLAB, functions are defined in separate files. The name of the file and of the function should be the same.

Functions operate on variables within their own workspace, which is also called the local workspace, separate from the workspace you access at the MATLAB command prompt which is called the base workspace.

Functions can accept more than one input arguments and may return more than one output arguments.

```function [out1,out2, ..., outN] = myfun(in1,in2,in3, ..., inN)```

### Anonymous Functions

An anonymous function is like an inline function in traditional programming languages, defined within a single ```MATLAB``` statement. It consists of a single ```MATLAB``` expression and any number of input and output arguments.

```f = @(arglist)expression```

### Primary and Sub-Functions

Each function file contains a required primary function that appears first and any number of optional sub-functions that comes after the primary function and used by it.

Primary functions can be called from outside of the file that defines them, either from command line or from other functions, but sub-functions cannot be called from command line or other functions, outside the function file.

Sub-functions are visible only to the primary function and other sub-functions within the function file that defines them.

### Nested Functions

Nested functions are defined within the scope of another function and they share access to the containing function's workspace.

``` matlab
function x = A(p1, p2)
...
B(p2)
   function y = B(p3)
   ...
   end
...
end
```

### Private Functions

If we do not want to expose the implementation of a function(s), we can create them as private functions.
Private functions reside in sub-folders with the special name private.
They are visible only to functions in the parent folder.

**NOTE:** For this we have to create a special folder in the current working by the name of private.

### Global Variables

Global variables can be shared by more than one function. For this, we need to declare the variable as ```global`` in all the functions.

e.g ```global variable_name```

## Importing Data

The ```importdata``` function allows loading various data files of different formats.

## Saving Data

The ```save``` keyword is used to save data to a file.

**Syntax:**

``` matlab
save watermelon.m dataSource
```

:exclamation: The above syntax stores data in binary format.

:exclamation: If we want to store the data in text readble format we have to use the ```-ascii``` tag along with it.