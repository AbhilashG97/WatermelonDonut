%{
  This snippet shows a few tips and tricks possible with matlab
%}

A = [2,3; 1,5; 8,4];

disp(A);

W = [100, 20, 3 ,20, 10, 2, 3, 4, 41];

disp(W < 10);

X = magic(6);

disp(X);

% Max along columns 

B = max(Z, [], 1);

% Max along rows

C = max(Z, [], 2);

fprintf('The max along rows and columns are :\n');
disp(C);
disp(B);

S = magic(9);

% sum of all the columns 

columnSum = sum(S,1);
disp(columnSum);

% Sum along the rows

rowSum = sum(S, 2);
disp(rowSum);

