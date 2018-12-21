%{
    This snippet contains examples on 
    string manipulation
%}

% For [] operator spaces have to be appended manually
fruits = ['watermelon  ';
          'mango       ';
          'pine-apple  ';
          'lime        ';
          'dragon-fruit';
          'kiwi        '];
fprintf('The list of fruits are :\n');
disp(fruits);

% If char is used the spaces will be appended automatically
more_fruits = char('watermelon', 'mango', 'rambutan', 'papaya');
fprintf('More fruits are: \n');
disp(more_fruits);

% strcat is used to concatenate strings horizaontally
watermelons = strcat('square-watermelon', 'seedless-watermelon', 'red-watermeon');
fprintf('Here are different types of watermelons :\n');
disp(watermelons);

% Comparing strings 
fruit_1 = 'watermelon';
fruit_2 = 'dragon-fruit';

if strcmp(fruit_1, fruit_2)
    fprintf('Awesome fruits!\n');
else 
    fprintf('Ah oh!\n');
end