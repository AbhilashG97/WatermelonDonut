%{
    This snippet contains examples 
    of loops in MATLAB
%}

count = input('Enter number of watermelons that you want to eat.\n');

while(count > 0) 
    fprintf('Watermelon %d\n', count);
    count = count - 1;
end

number = input('Enter a number.\n');
fprintf('The multiplication table for %d is :\n', number);
for i = 1:10
    fprintf('%d x %d = %d\n', i, number, number*i);
end

fprintf('Another ''for'' loop example.\n');
for i = [1,2,3,4,5,6,7,8,9,10]
    fprintf('%d\n', i);
end

limit = input('Enter a limit\n');
increment = input('Enter the increment value.\n');
for i = 1:increment:limit
    fprintf('Number : %d\n', i);
end

A = [1 2 3; 4 5 6; 7 8 9];
fprintf('The matrix A looks like this :\n');
for i = 1:3
    for j = 1:3
        fprintf('%d ', A(i,j));
    end
    fprintf('\n');
end