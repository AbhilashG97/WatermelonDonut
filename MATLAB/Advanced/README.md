# Advanced MATLAB Commands

## Plotting

### Basics 

To plot the graph of a function, we need to take the following steps −

1. Define ```x```, by specifying the range of values for the variable ```x```, for which the function is to be plotted
1. Define the function, ```y = f(x)```
1. Call the plot command, as ```plot(x, y)```

:exclamation: **NOTE**: Vectors used in ```plot()``` must be of the same length.

:bulb: The curve is smoother when the value of the increment is small.

### Adding Title, Labels, Grid Lines and Scaling on the Graph

The following can be done with the ```plot``` function in ```MATLAB``` -

1. The ```xlabel``` and ```ylabel``` commands generate labels along x-axis and y-axis.
1. The ```title``` command allows you to put a title on the graph.
1. The ```grid on``` command allows you to put the grid lines on the graph.
1. The ```axis equal``` command allows generating the plot with the same scale factors and the spaces on both axes.
1. The ```axis square``` command generates a square plot.

:exclamation:**NOTE:** ```plot(X,Y,LineSpec)``` sets the line style, marker symbol, and color.

### Drawing Multiple Functions on the Same Graph

We can also draw multiple graphs on the same plot. ````plot(X1,Y1,...,Xn,Yn)``` plots multiple X, Y pairs using the same axes for all lines. ```plot(X1,Y1,LineSpec1,...,Xn,Yn,LineSpecn)``` sets the line style, marker type, and color for each line.

Here is an example - 

``` matlab
x = [0 : 0.01: 10];
y = sin(x);
g = cos(x);
plot(x, y, x, g, '.-'), legend('Sin(x)', 'Cos(x)')
```

### Setting Axis Scales

The axis command allows you to set the axis scales. You can provide **minimum** and **maximum** values for ```x``` and ```y``` axes using the axis command in the following way −

```axis ( [xmin xmax ymin ymax] )```

### Generating Sub-Plots

When we create an array of plots in the same figure, each of these plots is called a subplot. The ``subplot()``` command is used for creating subplots.

Syntax for the command is −

```subplot(m, n, p)```

where, m and n are the number of rows and columns of the plot array and p specifies where to put a particular plot

### Saving Plots

We can save plots in MATLAB using the print command. 

Here is an example for the same - 

```matlab
x = [1:2:100]
y = [1:10]

plot(x, y);
print -dpng 'watermelonPlot.png'
```

### Closing plots

We can close plots using the ```close()``` function.

Here is an example of the close command - 

```matlab
x = [1:10:100]
y = x;
plot(x, y);
close();
```

### Drawing figures

We can plot graphs in various figures. The ```figure()``` function can be used to create plots in different figures. 

Below is an example for the same - 

```matlab
figure(1): plot(x, y);
figure(2): plot(z, w);
```

### Clearing figures

We can clear figures using the ```clf()``` function. 

Here is an example for the same - 

```matlab
figure(1): plot(x, y);
figure(2): plot(x, z);
```

:warning: If multiple graphs are plotted in figures then the ```clf``` clears the last figure and not all the figures.

### Visualizing a matrices

A matrix can also be visualized as a color specification. It can be done with the following commmand. 

Here is an example - 

```matlab
imagesc(A), colorbar, colormap gray;
```

:warning: We can chain commands using commas, and this is knows as comma-chaining. It is used to chain commands.

### Drawing Bar Charts


