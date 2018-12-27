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

% graph of sin(x), cos(x), tan(x);

x = [0:0.01:10];
y = sin(x);
z = cos(x);
plot(x, y, x, z, '--');
legend('sin(x)', 'cos(x)', 'cosec(x)');
grid on;

%{  
    graph for - 
    f(x) = 3x4 + 2x3+ 7x2 + 2x + 9
    g(x) = 5x3 + 9x + 2
%}

x = [-10:0.01:10];
y = 3*x.^4 + 2*x.^3 + 7*x.^2 + 2*x + 9;
z = 5*x.^3 + 9*x + 2;
plot(x, y, 'r', x, z ,'g');
legend('f(x)', 'g(x)');
xlabel('x-axis'), ylabel('y-axis');
title('Polynomial graphs');



