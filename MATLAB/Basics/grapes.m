function [length, string] = grapes(string1, string2)

% This function takes 2 strings and returns the length of the concatenated 
% string
length = strlength(meow(string1, string2));
string = banana(string1);
end

% A sub-function which concatenates a string
function catcat = meow(string1, string2)
    catcat = strcat(string1, string2);
end