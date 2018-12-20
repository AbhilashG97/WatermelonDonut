%{
    This program is going to read stuff 
    from a file.
%}

display_message = 'Enter the input file\n';

file_name = input(display_message, 's');

file_id = fopen(file_name, 'r'); % opening a file in read mode

A = fscanf(file_id, '%s');

disp(A);

fclose(file_id);