%{
  This file contains examples on the plotting functions in matlab
%}

x = [0:0.01:0.98];
y = sin(2*pi*4*x);
z = cos(2*pi*4*x);

plot(x, y);

% Closing a plot
close();

% Creating plots in figures

figure(1): plot(x, y);
figure(2): plot(x, z);

clf;
