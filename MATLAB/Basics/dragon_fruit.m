%{
    This snippet contains examples on 
    basic MATLAB Operators
%}

A = [1 2 3; 4 5 6; 7 8 9]; % Matrix A
B = [1 2 3; 4 5 6; 7 8 9]; % Matrix B

fprintf('Array multiplication : \n');
C = A .* B;

disp(C);

fprintf('Matrix multiplication : \n');
C = A * B;

disp(C);

fprintf('This is matrix A :\n');

disp(A);

fprintf('This is transpose of matrix A : \n');
disp(A');

fprintf('This is array A :\n');

disp(A);

fprintf('This is transpose of array A : \n');
disp(A.');