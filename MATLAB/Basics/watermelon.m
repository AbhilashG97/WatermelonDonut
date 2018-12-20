%{
    A program that demonstrates the 
    a few basic concepts of input/output
%}

NoOfStudents = input('Enter the number of students');
TeachingStaff = input('Enter the number of teaching staff');
NonTeachingStaff = input('Enter the number of non-teaching staff');

total = NoOfStudents + TeachingStaff + NonTeachingStaff;

fprintf('The total number of employees are : %d', total);