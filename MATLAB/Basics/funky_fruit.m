%{
    This snippet demonstrates the use of funtions in MATLAB
%}

disp(star_fruit('watermelon', 'grapes', 'papaya', 'mango'));

[sum, average] = apple(10,10,20,10);
fprintf('The sum is : %d\n', sum);
fprintf('The average is : %d\n', average);

squared_mean = @(value1, value2, value3, value4) (value1^2+value2^2+value3^2+value4^2)/4;

fprintf('The squared mean is %d :\n', squared_mean(10,20,30,40));

[length, string] = grapes('one', 'two');

fprintf('The length of the entered strings is %d and the new string is %s:\n', length, string);