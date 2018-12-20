%{
    This snippet coontains simple examples on
    if-else elseif-switch statements 
%}

fprintf('Please enter the following details.\n\n');

age = input('Enter your age\n', 's');

if str2num(age) > 100
    fprintf('You are oooold!!!\n');
end

numberOfWatermelons = input('How many watermelons can you eat?\n', 's');

if(str2num(numberOfWatermelons) > 5)
    fprintf('You are awesome!!\n');
else 
    fprintf('You are really need to eat more watermelons!!\n');
end

fruit = lower(input('Enter your favorite fruit.\n', 's'));

switch(fruit)
case 'watermelon'
    fprintf('Yay! You are awesome');
case 'kiwi'
    fprintf('Good!');
otherwise
    fprintf('Yay, That''s great'); %{ ' is used as an escape character. 
end