%{
    A code snippet that demonstrates the plotting
    of graphs in MATLAB
%}

x = [0:10:100];
y = x;
plot(x, y); % graph of y = x;

x = [-100:10:100];
y = x.^2;
plot(x,y); % graph of y = x^2;

x = [-100:5:100];
y = x.^3;
plot(x,y); % graph of y = x^3;

x = [-100:10:100];
y = log(x); 
plot(x, y); % graph of y = log(x);
xlabel('x-axis');
ylabel('y-axix');
title('log(x) graph');
grid on;
axis square;

% graph of y = sin(x);
clear;
x = [0:0.1:10];
y = sin(x);
plot(x,y), title('sin(x) graph'), xlabel('x-axis'), ylabel('y-axis');
grid on;
axis square;


