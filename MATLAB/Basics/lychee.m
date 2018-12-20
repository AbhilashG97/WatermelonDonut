%{
    This code snippet shows examples 
    of usage of vectors and matrices 
    used in MATLAB
%}

A = [1 2 3 4 5 6 7 8 9];
B = [1; 2; 3; 4; 5; 6; 7; 8; 9;];
C = [1 2 3; 4 5 6; 7 8 9; 10 11 12];
D = [1 2 3 4 5; 2 3 4 5 6; 3 4 5 6 7; 4 5 6 7 8; 5 6 7 8 9];
E = [1 2 3; 4 5 6; 7 8 9];
fprintf('Row vector A.\n');
disp(A);

fprintf('Column vector B.\n');
disp(B);

fprintf('The frist three rows of the column vector are : \n');
disp(B(1:3));

%{
    This will display elements from 1 to 9 but it will skip 2 elements
%}
fprintf('Some of the elements of the row vector A are :\n');
disp(A(1:2:9));

fprintf('Some of the elements present in matrix C are as follows: \n');
disp(C);

fprintf('The element at (2,3) is : %d\n', C(2,3));

fprintf('Some of the elements of the matrix are : \n');
disp(C(:, 1:2:3)); % Another way of displaying elements

%{
    Deleting rows and columns of a Matrix
%}

D(3, :) = [];
disp(D);

D(:, 1:2:4) = [];
disp(D);

%{
    Copying rows and columns from a pre-existing matrix
%}
fprintf('Copying 2nd and 3rd row from a Matrix C.\n');
c = C([2,3,2,3], :);
disp(c);

fprintf('Inverse of E is :\n');
disp(inv(E));

fprintf('Determinant of E is :\n');
disp(det(E));
