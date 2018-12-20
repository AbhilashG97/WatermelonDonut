%{
    This code snippet contains information on special arrays.
%}

% creates a matrix of zeros
A = zeros(5);
disp(A);

% creates a matrix of ones
B = ones(5);
disp(B);

% create an identity matrix
C = eye(5);
disp(C);

% create a magic square
D = magic(5);
disp(D);

% concatenating arrays
E = cat(3, A, B, C);
disp(E);

% sorting an array
F = [100,434,2,5,321,99,43,54,6];
fprintf('The sorted array is : \n');
disp(sort(F));

% 2D Arrays can also be sorted 
Z=[1 54 3 23; 43 5 11 6; 656 7 43 2; 87 4 6 3];
disp(Z);
fprintf('Sorting along the first row.\n');
disp(sort(Z, 1));