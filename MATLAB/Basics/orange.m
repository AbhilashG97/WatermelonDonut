%{
  This code snippet demonstrates the use of a few keywords used in
  MATLAB/Octave  
%}

fruit = [1:9, 1:2:9];

save watermelon.mat fruit;

apple = ['watermelon', 'orange'];

save apple.mat apple -ascii;