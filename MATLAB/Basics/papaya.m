%{
  This code snippet conatins soem more examples
  on matrix manipulation.  
%}

A = magic(9);
disp(A);

B = sum(A, 1);
disp(B);

I = eye(4);

% Flip a matrix upside down

flipud(I);