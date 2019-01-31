%{
  This file contains examples on loops, i.e for and while 
  loops.
%}
for i = [1:2:100],
    if mod(i,2) == 0
      v(i) = i;
    end
    i = i + 1;
end

disp(v);

%{
  This is an exmaple for while loop
%}

disp('while loop');
i = 0;
while i < 10,
   i = i+1;
   disp(i);
end